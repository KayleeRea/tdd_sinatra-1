require 'sinatra/base'

class App < Sinatra::Base

  DASFOOD = []

  get '/' do
    erb :index
  end

  get '/new-item' do
    erb :new_items
  end

  post '/' do
    DASFOOD << params[:new_item]
    redirect '/'
  end
end


