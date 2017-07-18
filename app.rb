require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:play)
  end
end
