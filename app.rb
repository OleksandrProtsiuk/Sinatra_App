require 'sinatra'
load 'conf.rb'

enable :sessions

get '/' do
  erb :index
end

post '/page' do
  @name = params[:name]
  session[:name] = params[:name]
  erb :page
end

get '/page' do
  rnd = Random.new
  @name = session[:name]
  @rand = rnd.rand(INTERVAL)
  @health = PARAMETERS[:health] + params[:care].to_i
  @hanger = PARAMETERS[:hunger] + params[:feed].to_i
  @joy = PARAMETERS[:joy] + params[:play].to_i
  @purity = PARAMETERS[:purity] + params[:clear].to_i
  erb :page
end

post '/dead' do
  erb :dead
end

not_found do
  status 404
  erb :'404'
end
