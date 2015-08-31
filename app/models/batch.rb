class Batch < ActiveRecord::Base
  has_many :terms
  belongs_to :course

  def to_s
    self.code
  end
end
