class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end
    
  def new
  end  
end
