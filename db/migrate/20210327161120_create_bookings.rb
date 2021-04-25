class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :title
      t.integer :cost
      t.datetime :start
      t.text :cancellation_reason
      t.integer :schedule_id
      t.integer :item
      t.integer :user

      t.timestamps
    end
    add_index :bookings, :schedule_id
    add_index :bookings, :item
    add_index :bookings, :user
  end
end
