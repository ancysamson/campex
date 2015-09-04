class Term < ActiveRecord::Base
  has_many :papers
  belongs_to :batch

  def to_s
    self.code
  end
end
