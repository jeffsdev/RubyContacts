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
