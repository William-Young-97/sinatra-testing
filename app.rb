require 'sinatra'
require 'sinatra/reloader'

get '/' do
    "Hello?"
  end

  get '/secret' do
    "reeeeeeeeeeeeeeeeeeeeee"
  end

  get '/chicken' do
    "cluck"
  end

  get '/random-cat' do
    @name = ["Em", "Shady", "Marshall"].sample 
    erb(:index)
  end

  get '/named-cat' do
    p @name = params[:name]
    erb(:index)
  end
