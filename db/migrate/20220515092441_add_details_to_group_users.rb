class AddDetailsToGroupUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :group_users, :user, null: false, foreign_key: true
    add_reference :group_users, :group, null: false, foreign_key: true
  end
end
