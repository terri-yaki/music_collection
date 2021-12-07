class AddUserIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_ID, :integer
    add_index :users, :user_ID
  end
end
