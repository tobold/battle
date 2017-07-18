feature 'View Hit Points' do
  scenario 'Players can enter names on index, and posted to play page' do
    visit('/')
    fill_in 'player1', with: 'Gerald'
    fill_in 'player2', with: 'Henry'
    click_on 'Submit'
    expect(page).to (have_content 'Player 1: Gerald HP: 100' and have_content 'Player 2: Gerald HP: 100')
  end
end
