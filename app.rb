require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @result = params.fetch('Player1').beats?(params.fetch('Player2'))
  erb(:results)
end
