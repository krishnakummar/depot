class ChangeCartIdToHash2 < ActiveRecord::Migration
  def up
    rename_column :line_items, :cart_hash, :cart_id
    change_column :line_items, :cart_id, :int
  end

  def down
  end
end
