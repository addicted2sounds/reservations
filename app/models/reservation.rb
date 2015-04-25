class Reservation < ActiveRecord::Base
  belongs_to :table
  validates_presence_of :start_time, :end_time, :table
  validate :validate_time_period

  def validate_time_period
    errors.add(:end_time, :time_period_negative) if start_time > end_time
  end
end
