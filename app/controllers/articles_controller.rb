class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
  end

private
  def article_params
    params.require(:articles).permit(:title, :text)
  end
end
