FactoryBot.define do
  factory :user do
    first_name { "Jeanne" }
    last_name { "D'Arc" }
    email { Faker::Internet.email }
    password { "password123" }
    password_confirmation { "password123" }
  end
end
