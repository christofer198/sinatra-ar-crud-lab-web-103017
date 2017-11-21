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
    titles = params[:title]
    blogs = params[:blog]
    new_post = Post.new(titles, blogs)
    new_post.save
  end

end
