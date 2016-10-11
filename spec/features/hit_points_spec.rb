require 'spec_helper'

feature 'Hit Points' do

  before do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
  end

  scenario 'checking names' do
    expect(page).to have_content 'Mittens: 50HP'
  end

end
