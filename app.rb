require 'sinatra'

class Battle < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret' #if using Shotgun

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    session[:player1_hp] = 100
    session[:player2_hp] = 100
    redirect '/play'
  end

  get '/play' do
    @player1_hp = session[:player1_hp]
    @player2_hp = session[:player2_hp]
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  get '/player1_attack' do
    session[:player2_hp] -=1
    redirect '/play'
  end
end
