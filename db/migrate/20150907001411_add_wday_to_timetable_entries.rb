class AddWdayToTimetableEntries < ActiveRecord::Migration
  def change
    add_column :timetable_entries, :wday, :integer
  end
end
