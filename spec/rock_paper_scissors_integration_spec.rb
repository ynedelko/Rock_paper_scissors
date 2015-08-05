require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the result path", {:type => :feature}) do
  it("shows which player won") do
    visit('/')
    fill_in('Player1', :with => 'rock')
    fill_in('Player2', :with => 'paper')
    click_button('Go!')
    expect(page).to have_content("Player 2 wins!")
  end
end
