class StaticPagesController < ApplicationController

  def home
    @articles = Article.order(created_at: :desc).page(params[:page]).per(10)
  end
  
end