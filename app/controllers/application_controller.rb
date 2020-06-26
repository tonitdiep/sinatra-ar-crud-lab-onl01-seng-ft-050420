
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
# remember for later format-wise
# @article = Article.new(params[:title])
# @article = Article.create(params)
  get '/' do
  
  end
  
  get '/articles' do 
    erb :index
  end
  get '/articles/new' do 
    erb :new
  end
  
  post '/articles' do 
    # binding.pry
    # @article = Article.create(params)
    @article = Article.create
    redirect 
    erb :show 
    binding.pry
  end
  
  get '/articles/:id' do
    @article = params[:id]
    erb :show
  end
end
