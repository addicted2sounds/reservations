require 'rails_helper'

RSpec.describe Table, type: :model do
  it 'has valid factory' do
    table = create :table
    expect(table).to be_valid
  end
end
