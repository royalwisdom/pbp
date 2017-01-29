class Article < ApplicationRecord
  validates :title, :preview, :text, presence: true
  
    
  
end
