class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.integer :user

      t.timestamps
    end
    add_index :schedules, :user
  end
end
