class ChangeDateColumninReservations < ActiveRecord::Migration[6.1]
  def change
    rename_column :reservations, :date, :start_date
    add_column :reservations, :end_date, :datetime
  end
end
