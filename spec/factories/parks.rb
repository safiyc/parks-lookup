FactoryBot.define do
  factory :park do
    name { Faker::Lorem.word }
    state { Faker::Address.state }
  end
end
