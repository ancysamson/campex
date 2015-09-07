class AddPaperIdToTimetableEntries < ActiveRecord::Migration
  def change
    add_reference :timetable_entries, :paper, index: true, foreign_key: true
  end
end
