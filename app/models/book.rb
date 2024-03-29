class Book < ActiveRecord::Base
  attr_accessible :description, :title, :price, :picture
  validates :title, :description, :price, :presence => true
  has_many :line_item
end
