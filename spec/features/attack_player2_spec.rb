require_relative 'web_helpers.rb'

feature 'Enter names' do
  scenario 'Players can enter names on index, and posted to play page' do
    sign_in
    attack
    expect(page).to have_content 'Player 2: Henry HP: 99'
  end
end
