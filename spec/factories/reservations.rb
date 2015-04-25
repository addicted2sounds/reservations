FactoryGirl.define do
  factory :reservation do
    table nil
    start_time { Faker::Date.forward }
    end_time { Faker::Date.forward }
  end
end
