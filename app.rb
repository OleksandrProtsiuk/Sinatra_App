require 'sinatra'

get '/' do
  erb :index
end

get '/page' do
  'Ok.. now U here'
end
