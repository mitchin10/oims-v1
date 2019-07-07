class ProductBrand < ApplicationRecord
  belongs_to :store

  validates_presence_of :brand_name
end
