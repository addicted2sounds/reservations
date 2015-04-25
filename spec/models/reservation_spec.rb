require 'rails_helper'
RSpec.describe Reservation, type: :model do
  it { expect(create :table).to be_valid }
  describe 'validation' do
    #it { is_expected.to validate_presence_of(:start_date) }
    #it { is_expected.to validate_presence_of(:end_date) }
  end
end
