class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :book_id
  belongs_to :cart
  belongs_to :book
end
