class Store < ApplicationRecord
  has_many :product_brands

  validates_presence_of :store_name, :address, :city, :state, :zipcode
end
