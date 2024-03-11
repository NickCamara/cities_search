FactoryBot.define do
  factory :city do
    name { Faker::Name.name }
    state { State.first || association(:state) }
  end
end