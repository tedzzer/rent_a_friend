class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.text :description
      t.string :location
      t.string :price

      t.timestamps
    end
  end
end
