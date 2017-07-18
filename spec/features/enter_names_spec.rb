require_relative 'web_helpers.rb'

feature 'Enter names' do
  scenario 'Players can enter names on index, and posted to play page' do
    sign_in
    expect(page).to (have_content 'Gerald' and have_content 'Henry')
  end
end
