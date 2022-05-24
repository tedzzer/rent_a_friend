class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :friend, foreign_key: true
      t.datetime :date

      t.timestamps
    end
  end
end
