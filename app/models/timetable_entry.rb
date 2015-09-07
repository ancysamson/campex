class TimetableEntry < ActiveRecord::Base
  belongs_to :timetable
  belongs_to :period
  belongs_to :staff
  belongs_to :paper
  belongs_to :teacher, class_name: "Staff"
end
