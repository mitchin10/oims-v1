FactoryBot.define do
  factory :product_brand do
    store_id        { Faker::IDNumber.valid_south_african_id_number }
    brand_name      { Faker::Commerce.product_name }
  end
end
