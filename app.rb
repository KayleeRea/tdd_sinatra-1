require 'sinatra'
require 'sinatra/base'


class App < Sinatra::Base

  DASFOOD = []

  get '/' do
    erb :index
  end

  get '/items' do
    erb :items

  end

  get '/items/new' do
    erb :new
  end

  post '/items' do
    DASFOOD << params[:new_item]
    erb :items
  end

  get '/items/:id' do
    erb :item_info
  end
end