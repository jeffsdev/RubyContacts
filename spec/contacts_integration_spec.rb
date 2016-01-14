require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('contact page pathways', {:type => :feature}) do
  it('routing to contact_form page') do
    visit('/')
    click_link("Add Contact")
    expect(page).to have_content("Contact Form")
  end
end
