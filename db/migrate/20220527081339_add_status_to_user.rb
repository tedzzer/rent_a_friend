class AddStatusToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :status, :boolean
  end
end
