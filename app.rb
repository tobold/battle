require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end
end
