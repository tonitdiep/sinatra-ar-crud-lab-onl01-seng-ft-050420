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
    @articles = Article.all
    # binding.pry
    erb :index
  end
  get '/articles/new' do
    erb :new
  end
  
  post '/articles' do 
    # @article = Article.create(:title => params[:title], :content => params[:content])
    @article = Article.create(params[:title], params[:content])
    redirect to '/articles/#{article.id}'
    erb :new 
  end
  
  get '/articles/:id' do
    @article = Article.find_by_id(params[:id])
    erb :show
  end
  
  get '/articles/:id/edit' do 
   
  end 
  
  patch '/articles/:id' do 
  end
end
