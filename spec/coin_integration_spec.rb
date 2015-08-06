require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin_combination path', {:type => :feature}) do
  it('processes the user entry and returns it in an amount of change') do
    visit('/')
    fill_in('coin_combination', :with => 41)
    click_button('Change Me!')
    expect(page).to have_content("1 pennies, 1 nickles, 1 dimes, 1 quarters")
  end
end
