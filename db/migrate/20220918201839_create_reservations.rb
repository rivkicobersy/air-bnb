class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :room_id
      t.string :start_date
      t.string :end_date
      t.decimal :price, precision: 9, scale: 2
      t.integer :total_guests

      t.timestamps
    end
  end
end
