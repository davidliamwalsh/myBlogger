class ArticlesController < ApplicationController
  
  def show
    @article = Article.includes(:comments).friendly.find(params[:id])
  end

end
