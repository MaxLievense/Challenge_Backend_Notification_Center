class Comment < ApplicationRecord
  validates_presence_of :content
  
  belongs_to :notification
end
