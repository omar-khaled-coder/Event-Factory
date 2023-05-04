class CreatePlannerBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :planner_bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :planner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
