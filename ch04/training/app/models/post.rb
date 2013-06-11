class Post < ActiveRecord::Base
  validates :blurb, :length => {:in => 10..255}
  validates :body, :title, :presence => :true
end
