class ArticlesController < ApplicationController
  def show
    #binding.break
    @article = Article.find(params[:id])
  end

  def index
    #binding.break
    @articles = Article.all
  end

  def new
  end

  def create
    render plain: params[:article]
  end
end
