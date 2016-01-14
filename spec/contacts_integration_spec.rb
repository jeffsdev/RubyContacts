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
  it('posts name into contact_list') do
    visit('/')
    click_link("Add Contact")
    fill_in('first_name', :with => 'Chad')
    fill_in('last_name', :with => 'Brochadbro')
    fill_in('job_title', :with => 'Broker')
    fill_in('company', :with => 'Taco Bell')
    click_button('Submit')
    visit('/contact/list')
    expect(page).to have_content("Brochadbro, Chad")
  end
end
