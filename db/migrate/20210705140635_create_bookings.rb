class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
