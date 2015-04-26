class Reservation < ActiveRecord::Base
  belongs_to :table
  validates_presence_of :start_time, :end_time, :table
  validate :validate_time_period, :validate_table_is_free
  scope :table, ->(id) { where(table_id: id)}

  def validate_time_period
    if start_time > end_time
      errors.add(:start_time, :time_period_negative)
      errors.add(:end_time, :time_period_negative)
    end
  end

  def validate_table_is_free
    #if Reservation.exists?(table_id: table_id, start_time: :start_time...:end_time, end_time: :start_time...:end_time)
    if Reservation.table(table_id).exists?
      errors.add(:start_time, :table_is_already_reserved)
      errors.add(:end_time, :table_is_already_reserved)
    end
  end
end
