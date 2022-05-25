class RemoveUserIdFromFriends < ActiveRecord::Migration[6.1]
  def change
    remove_column :friends, :user_id, :string
  end
end
