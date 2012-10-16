class Bookmark < ActiveRecord::Base
  attr_accessible :link, :name, :tags, :title
  
  validates :title, 	:presence=>true
  validates :link,		:presence=>true
  validates :name,		:presence=>true
end
