class AddOptionsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :location, :string
    add_column :users, :personal_description, :text
  end
end
