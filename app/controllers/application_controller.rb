require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @posts = Post.all
    erb :index
  end
  #create
  get '/posts/new' do
    erb :new
  end

  post '/posts' do
    new_post = Post.create(title: params[:title],  blog: params[:blog])
    redirect "/"
  end
  #read
  get '/posts' do
    @posts = Post.all
  end

  #Update
end
