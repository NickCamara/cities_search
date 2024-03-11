FactoryBot.define do
  factory :state do
    name: { Faker::Name.name }
  end
end