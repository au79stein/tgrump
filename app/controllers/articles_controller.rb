class ArticlesController < ApplicationController
  def show
    #binding.break
    @article = Article.find(params[:id])
  end

  def index
    #binding.break
    @articles = Article.all
  end
end
