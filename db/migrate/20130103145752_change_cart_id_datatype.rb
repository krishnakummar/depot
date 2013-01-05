class ChangeCartIdDatatype < ActiveRecord::Migration
  def up
    change_column("line_items", "cart_id", "text")
  end

  def down
  end
end
