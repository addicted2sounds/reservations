class Reservation < ActiveRecord::Base
  belongs_to :table
  validates_presence_of :start_time, :end_time, :table
  validate :time_period_positive?

  def time_period_positive?
    errors.add(:end_time, :time_period_negative) if start_time > end_time
  end
end
