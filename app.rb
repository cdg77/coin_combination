require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combination')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/coin_combination') do
  @coin_combination = params.fetch('coin_combination').coin_combination()
  erb(:coin_combination)
end
