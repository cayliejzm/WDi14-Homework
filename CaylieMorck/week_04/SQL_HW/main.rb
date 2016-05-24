require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

get '/' do
  erb :home
end

get '/dogs' do
  db = SQLite3::Database.new "database.db"
  db.results_as_hash = true

  @all_dogs = db.execute "SELECT * FROM dogs;"

  erb :dogs_index
end

get '/dogs/new' do
  erb :dogs_new
end

post '/dogs' do
  db = SQLite3::Database.new "database.db"
  db.results_as_hash = true

  @dog = db.execute "INSERT INTO dogs (name, breed, image, description) VALUES ('#{params[:name]}', '#{params[:breed]}', '#{params[:image]}', '#{params[:description]}');"

 redirect "/dogs"

end

get '/dogs/:id/delete' do
  db = SQLite3::Database.new "database.db"
  db.results_as_hash = true

  db.execute "DELETE FROM dogs WHERE id == #{params[:id]};"

  redirect "/dogs"
end

get '/dogs/:id/edit' do
  db = SQLite3::Database.new "database.db"
  db.results_as_hash = true

  @dog = db.execute("SELECT * FROM dogs WHERE id == #{params[:id]};")[0]
  erb :dogs_edit

  redirect "/dogs/:id"

end

post '/dogs/:id' do
  db = SQLite3::Database.new "database.db"
  db.results_as_hash = true

  db.execute "UPDATE dogs SET  name ='#{params[:name]}', breed ='#{params[:breed]}', image='#{params[:image]}', description ='#{params[:description]}' WHERE id == #{params[:id]};"

  redirect "/animals/#{params[:id]}"
end


get '/dogs/:id' do
  db = SQLite3::Database.new "database.db"
  db.results_as_hash = true

  @dog = db.execute ("SELECT * FROM dogs WHERE id === #{params[:id]};")[0]
  erb :dogs_show
end
