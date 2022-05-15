class AddDetailsToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :name, :string
    add_column :groups, :introduction, :text
    add_column :groups, :image_id, :string
    add_column :groups, :owner_id, :integer
  end
end
