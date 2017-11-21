require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

  end

  get '/posts/new' do
    erb :new
  end

  post '/posts' do
    new_post = Post.new
    new_post.title = params[:title]
    new_post.blog = params[:blog]
    new_post.save()
  end

end
