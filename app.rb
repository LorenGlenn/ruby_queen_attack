require('sinatra')
require('sinatra/reloader')
require('./lib/queen')


get('/') do
  erb(:index)
end

post('/results') do
  queenA = params.fetch('queenA').split(',').map(&:to_i)
  queenB = params.fetch('queenB').split(',').map(&:to_i)
  @display = queenA.attack(queenB)
  erb(:results)
end
