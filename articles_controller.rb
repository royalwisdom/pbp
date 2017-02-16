class ArticlesController < ApplicationController
 
  def index
    @articles = Article.all
    render 'articles/index_articles'
  end
  
  def new
    render 'articles/new_article'
  end
  
  def create
    @new_article = Article.create(article_params)
    if @new_article.save!
      @articles = Article.all
      render 'articles/index_articles'
    else
      render 'articles/error_uploading_article'
    end
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :preview, :text)
    end
end
