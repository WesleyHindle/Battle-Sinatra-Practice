require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'

class Battle < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end 

  enable :sessions

  get '/' do  
    erb :index
  end 

  post '/names' do
    $player_1 = Player.new(params[:player_1_name]) #session[:var_name] allows vars to be stored in session instead of instance vars
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do 
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    erb :play
  end 

  get '/attack' do 
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1.attack(@player_2)
    erb :attack
  end 

  #start the server if ruby file executed directly
  run! if app_file == $0
end