class Post < ActiveRecord::Base
  attr_accessible :title, :slug, :blurb, :content, :category_id, :image
  belongs_to :category
  scope :rails, where(:category_id => 1)
  extend FriendlyId

  friendly_id :title, use: :slugged
  mount_uploader :image, ImageUploader
end
