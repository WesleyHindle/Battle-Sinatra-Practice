require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end 

  enable :sessions

  get '/' do  
    erb :index
  end 

  post '/names' do
    session[:player_1_name] = params[:player_1_name] #session[:var_name] allows vars to be stored in session instead of instance vars
    session[:player_2_name] = params[:player_2_name]
    p params
    redirect '/play'
  end

  get '/play' do 
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end 

  #start the server if ruby file executed directly
  run! if app_file == $0
end