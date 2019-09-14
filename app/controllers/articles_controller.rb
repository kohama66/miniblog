class ArticlesController < ApplicationController

  def index
    @article = Article.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @article = Article.new
  end  

  def create
    Article.create(article_params)
    redirect_to action: 'index'
  end  

  def show
  end  

  private
  def article_params
    params.require(:article).permit(:content).merge(user_id: current_user.id)
  end
end
