class Batch < ActiveRecord::Base
  has_many :terms
  belongs_to :course
end
