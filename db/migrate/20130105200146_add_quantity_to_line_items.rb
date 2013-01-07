class AddQuantityToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :quanity, :int
  end
end
