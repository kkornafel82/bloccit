class Topic < ActiveRecord::Base
  has_many :posts

  Topic.per_page = 50
  
end
