require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combination')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/coin_combination') do
  @coin_combination = params.fetch('coins').to_i().coin_combination()
  erb(:coin_combination)
end
