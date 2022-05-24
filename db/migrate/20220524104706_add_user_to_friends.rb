class AddUserToFriends < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :user_id, :string
  end
end
