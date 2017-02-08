class Article < ApplicationRecord
  validates :title, :preview, :text, presence: true
  
  def self.create_article(submitted_article)
    body = submitted_article['body']
    body_length = body.length
    preview = []
    i = 0
    j = 0
    
    body.each{ |t|
    while i < 3
      if body[j] != "."
        preview << body[j]
      else
        preview << body[j]
        i = i + 1
      end
    end
    
    article = Article.new do |a|
      a.title = submitted_article['title']
      a.preview = submitted_article['preview']
      a.body = submitted_article['body']
      end
  end 
  
end
