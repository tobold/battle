require_relative 'web_helpers.rb'

feature 'View Hit Points' do
  scenario 'Players can enter names on index, and posted to play page' do
    sign_in
    expect(page).to (have_content 'Player 1: Gerald HP: 100' and have_content 'Player 2: Henry HP: 100')
  end
end
