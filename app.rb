require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1  = Player.new(params[:player_1_name])
    player_2  = Player.new(params[:player_2_name])
    @game = Game.game_create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.non_current_player)
    redirect '/end_game' if @game.end_game?
    erb :attack
  end

  get '/switch' do
    @game.switch_turn
    redirect '/play'
  end

  get '/end_game' do
    erb :end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
