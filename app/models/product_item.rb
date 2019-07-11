class ProductItem < ApplicationRecord
  belongs_to :product_brand

  validates_presence_of :item_name, :sku, :amount
  validates_uniqueness_of :sku
end
