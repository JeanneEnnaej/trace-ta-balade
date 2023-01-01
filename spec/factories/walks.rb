FactoryBot.define do
  factory :walk do
    title { "Walk in the park" }
    address { "123 Main St" }
    user { build(:user) }
  end
end
