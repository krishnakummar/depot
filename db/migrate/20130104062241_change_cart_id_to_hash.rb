class ChangeCartIdToHash < ActiveRecord::Migration
  def up
    rename_column :line_items, :cart_hash, :cart_id
  end

  def down
  end
end
