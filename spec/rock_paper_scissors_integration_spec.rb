require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the result path", {:type => :feature}) do
  it("shows which player won") do
    visit('/')
    fill_in('Player 1', :with => 'rock')
    fill_in('Player 2', :with => 'paper')
    click_button('Go!')
    expect(page).to have_content(false)
  end
end