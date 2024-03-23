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
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      #redirect_to article_path(@article)
      # above can be abbreviated with the below shortcut since it is a common idiom
      redirect_to @article
    else
      #binding.break
      render 'new'
    end
  end

end




