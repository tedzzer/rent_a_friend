class AddLocationAndCommentsToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :location, :string
    add_column :reservations, :comment, :text
  end
end
