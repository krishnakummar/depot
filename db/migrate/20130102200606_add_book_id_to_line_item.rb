class AddBookIdToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :book_id, :integer
  end
end
