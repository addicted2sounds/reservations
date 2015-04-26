require 'rails_helper'
RSpec.describe Reservation, type: :model do
  it { expect(create :table).to be_valid }
  describe 'validation' do
    #it { is_expected.to validate_presence_of(:start_date) }
    #it { is_expected.to validate_presence_of(:end_date) }
    it 'end_date > start_date' do
      reservation = build :reservation
      reservation.end_time = reservation.start_time - 2.hours
      reservation.valid?
      expect(reservation.errors).to include :end_time
    end
    it 'table is not reserved' do
      existing_reservation = create :reservation
      reservation = existing_reservation.dup
      reservation.valid?
      expect(reservation.errors).to include :start_time, :end_time
    end
  end
end
