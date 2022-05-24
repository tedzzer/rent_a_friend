class AddUserIdToFriends < ActiveRecord::Migration[6.1]
  def change
    add_reference :friends, :user, null: false, foreign_key: true
  end
end
