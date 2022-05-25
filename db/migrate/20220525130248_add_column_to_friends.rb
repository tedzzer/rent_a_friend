class AddColumnToFriends < ActiveRecord::Migration[6.1]
  def change
    add_column :friends, :name, :string
    add_column :friends, :age, :integer
  end
end
