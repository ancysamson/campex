class CreateStaffGrades < ActiveRecord::Migration
  def change
    create_table :staff_grades do |t|
      t.string :name
      t.integer :priority
      t.integer :max_periods_per_day
      t.integer :max_periods_per_week

      t.timestamps null: false
    end
  end
end
