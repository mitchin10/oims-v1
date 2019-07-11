class ProductItem < ApplicationRecord
  belongs_to :product_brand

  validates_presence_of :item_name, :sku, :amount
end
