class Admin::ArticlesController < Admin::ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.image.attach(article_params[:image])

    if @article.save
      redirect_to admin_articles_path, status: :found, notice: "Article successfully created!"
    else
      render :new 
    end
  end

  def index
    @articles = Article.order(created_at: :desc).page(params[:page]).per(10)
  end

  def edit
    @article = Article.friendly.find(params[:id])
  end

  def update
    @article = Article.friendly.find(params[:id])
    @article.attributes = article_params
    
    if @article.save
      redirect_to admin_articles_path, notice: "Article successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @article = Article.friendly.find(params[:id])
    
    @article.destroy

    redirect_to admin_articles_path, notice: "Article successfully deleted!"
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :image)
  end
  
end
