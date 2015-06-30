require 'sinatra'

get '/' do
  erb :index
end

get '/heroes' do
  @heroes = ["Batman", "Superman", "Rogue", "Wolverine"]
  erb :heroes
end

get '/heroes/:hero' do
  heroes = { "Batman" => "batarang", "Superman" => "strength", "Rogue" => "flying", "Wolverine" => "claws" }
  @hero = params[:hero]
  @superpower = heroes[@hero]
  erb :hero
end