class Category < ActiveRecord::Base
  attr_accessible :title, :slug, :description
  has_many :posts
end
