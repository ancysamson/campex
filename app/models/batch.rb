class Batch < ActiveRecord::Base
  has_many :terms
  belongs_to :course

  def to_s
    self.code
  end

  def current_term
    Term.where('batch_id = ? AND ? BETWEEN start_date AND end_date', self.id, Date.current).first
  end
end
