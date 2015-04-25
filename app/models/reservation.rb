class Reservation < ActiveRecord::Base
  belongs_to :table
  validates_presence_of :start_time, :end_time, :table
end
