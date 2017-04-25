require 'sinatra'
require 'shotgun'

get '/' do
"Nothing to see here!!!"
end

get '/secret' do
"hi Filipe :)"
end


get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end


get '/cat2' do
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end

get '/naming-form' do
  erb(:naming_form)
end
