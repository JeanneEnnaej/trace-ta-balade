FactoryBot.define do
  factory :step do
    name { "Step" }
    latitude { 1.0 }
    longitude { 1.0 }
    walk { build(:walk) }
  end
end
