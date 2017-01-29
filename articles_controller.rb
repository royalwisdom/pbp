class ArticlesController < ApplicationController
 
  def index
    @articles = Article.all
    #@article_previews = []
   
    #@articles.each do |article|
    #  i = 0
    #  preview = []
    # full_text = article.text.split(' ')
    #  while i < 100 do
	#preview << full_text[i]
      #end
      #@article_previews << preview
    #end
    
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