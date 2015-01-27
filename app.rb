require 'sinatra'
require_relative './models/data'


get '/' do
  erb :example
end

get '/posts/:id' do
  @posts = Data.posts.find(params[:id])
  erb :posts
end