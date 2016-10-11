require 'spec_helper'

feature 'Hit Points' do

  scenario 'checking names' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 50HP'
  end

end
