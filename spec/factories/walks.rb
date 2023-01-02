FactoryBot.define do
  factory :walk do
    title { "Walk in the park" }
    address { "01700 Miribel, France" }
    user { build(:user) }
  end
end
