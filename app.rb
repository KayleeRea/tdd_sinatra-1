require 'sinatra'
require 'sinatra/base'


class App < Sinatra::Application

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

  get '/items/:id/edit' do
    erb :edit_item
  end

  put '/items/:id' do
    @id = params[:id].to_i
    @add_name = params[:edit_item]
    DASFOOD[@id] = @add_name
    redirect '/items'
  end

end