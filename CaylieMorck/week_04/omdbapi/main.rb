require 'httparty'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'


get '/' do
  erb :home
end

get '/result' do
  @user_movie = params[:user_movie]
  result = HTTParty.get "http://www.omdbapi.com?t=#{@user_movie}"
  @movie_title = result["Title"]
  @movie_year = result["Year"]
  @movie_poster = result["Poster"]
# binding.pry
  erb :result
end
