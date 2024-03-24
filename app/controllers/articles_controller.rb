class ArticlesController < ApplicationController
  def index
    #binding.break
    @articles = Article.all
  end

  def show
    #binding.break
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    #@article = Article.new(params.require(:article).permit(:title, :description))
    @article = Article.new(article_params)

    if @article.save
      #redirect_to article_path(@article)
      # above can be abbreviated with the below shortcut since it is a common idiom
      flash[:notice] = "Article was created successfully"
      redirect_to @article
    else
      #binding.break
      # render :new this doesn't workin in Rails 7, it doesn't display the error messages in the article... you need to do below to make it work
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      flash[:notice] = "Article #{@article.id} has been updated"
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :description)
  end

end




