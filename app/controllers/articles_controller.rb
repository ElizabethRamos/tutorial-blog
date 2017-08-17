class ArticlesController < ApplicationController
  def new
  end

  def create
  end

private
  def articles_params
    params.require(:articles).permit(:title, :text)
  end
end
