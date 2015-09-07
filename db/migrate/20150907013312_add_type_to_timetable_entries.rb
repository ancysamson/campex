class AddTypeToTimetableEntries < ActiveRecord::Migration
  def change
    add_column :timetable_entries, :type, :string
  end
end
