require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it 'has valid factory' do
    expect(create :table).to be_valid
  end
end
