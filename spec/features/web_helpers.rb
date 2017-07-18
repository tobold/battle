def sign_in
  visit('/')
  fill_in 'player1', with: 'Gerald'
  fill_in 'player2', with: 'Henry'
  click_on 'Submit'
end
