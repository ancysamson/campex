class CreateTimetableEntries < ActiveRecord::Migration
  def change
    create_table :timetable_entries do |t|
      t.belongs_to :timetable, index: true, foreign_key: true
      t.belongs_to :period, index: true, foreign_key: true
      t.belongs_to :staff, index: true, foreign_key: true
      t.integer :teacher_id

      t.timestamps null: false
    end
  end
end
