require 'sinatra'
load 'logic'

@pet = Pet.new
@zero_point = @pet.actions(indicators: [5, 5, 5, 5])


get '/' do
  erb :index
end

post '/page' do
  @name = params[:name]
  erb :page
end

get '/page' do
  erb :page
end

not_found do
  status 404
  erb :'404'
end
