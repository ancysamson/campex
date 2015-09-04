class TimetableEntry < ActiveRecord::Base
  belongs_to :timetable
  belongs_to :period
  belongs_to :staff
end
