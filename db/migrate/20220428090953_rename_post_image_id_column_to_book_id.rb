class RenamePostImageIdColumnToBookId < ActiveRecord::Migration[6.1]
  def change
    rename_column :Favorites, :post_image_id, :book_id
  end
end
