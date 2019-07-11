class ProductBrand < ApplicationRecord
  has_many :product_items, dependent: :destroy
  belongs_to :store

  validates_presence_of :brand_name

  def to_s
    self.brand_name
  end
end
