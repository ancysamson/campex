class Course < ActiveRecord::Base
  has_one :department, through: :course_type
  belongs_to :course_type

  has_many :batches

  def to_s
    self.code
  end

  def self.current_term_of_batches
    terms = {}

    Course.all.each do |course|
      course.batches.each do |batch|
        terms["#{course} - #{batch}"] = batch.current_term.id if batch.current_term
      end
    end
    terms
  end
end
