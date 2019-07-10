FactoryBot.define do
  factory :admin_user do
    name      { Faker::Internet.username }
    email     { Faker::Internet.email }
    password  { Faker::Internet.password }
  end
end
