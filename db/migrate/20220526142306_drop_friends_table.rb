class DropFriendsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :friend_id
    remove_column :reviews, :friend_id

    drop_table :friends

    add_column :reservations, :friend_id, :bigint, foreign_key: true
    add_column :reviews, :friend_id, :bigint, foreign_key: true
  end
end
