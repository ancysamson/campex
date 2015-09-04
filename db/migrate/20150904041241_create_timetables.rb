class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.belongs_to :term, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
