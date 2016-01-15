require('sinatra')
require('sinatra/reloader')
require('./lib/contact')
require('./lib/email')
require('./lib/mailing')
require('./lib/phone')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/contact/new') do
  erb(:contact_form)
end

get('/contact/list') do
  @contacts = Contact.all()
  erb(:contact_list)
end

post('/contact/list') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  job_title = params.fetch('job_title')
  company = params.fetch('company')
  Contact.new({:first_name => first_name,
               :last_name => last_name,
               :job_title => job_title,
               :company => company}).save()
  @contacts = Contact.all()
  erb(:success)
end

get('/contact/:id') do
  @contact = Contact.find(params[:id])
  erb(:contact)
end

get('/contact/:id/email_form') do
  @contact = Contact.find(params[:id])
  erb(:email_form)
end

post('/contact/:id/email_form') do
  @contact = Contact.find(params[:id])
  type = params.fetch('type')
  email_address = params.fetch('email_address')
  @emails = Email.new({:type => type,
                       :email_address => email_address})
  @emails.save()
  @contact.emails().push(@emails)
  @emails = Email.all()
  erb(:success)
end
