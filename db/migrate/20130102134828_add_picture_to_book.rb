class AddPictureToBook < ActiveRecord::Migration
  def change
    add_column :books, :picture, :text
  end
end
