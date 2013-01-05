class ChangeHashDatatype < ActiveRecord::Migration
  def up
    change_column("carts", "cart_hash", "text")
  end

  def down
  end
end
