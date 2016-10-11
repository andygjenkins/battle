require 'spec_helper'

feature 'Attack' do

  scenario 'reduce Player 2\'s HP by 10' do
    click_attack
    expect(page).to have_content 'Mittens: 40HP'
  end
  
end
