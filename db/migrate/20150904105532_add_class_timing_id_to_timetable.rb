class AddClassTimingIdToTimetable < ActiveRecord::Migration
  def change
    add_reference :timetables, :class_timing, index: true, foreign_key: true
  end
end
