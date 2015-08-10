require('sinatra')
require('sinatra/reloader')
require('./lib/triangles.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangles') do
  @side_one = params.fetch('side_one').to_i()
  @side_two = params.fetch('side_two').to_i()
  @side_three = params.fetch('side_three').to_i()
  @triangle = Triangle.new(@side_one, @side_two, @side_three)
  erb(:triangles)
end
