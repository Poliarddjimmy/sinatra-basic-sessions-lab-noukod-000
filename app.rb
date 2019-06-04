require_relative 'config/environment'

class App < Sinatra::Base
  enable :sessions
  set :session_secret, "23jim0488"
  
  get '/' do 
    erb :index
  end
  
  post '/checkout' do
    @item = params[:item]
    
    session["item"] = @item
    @session = session
  end
end