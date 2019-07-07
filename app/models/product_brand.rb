class ProductBrand < ApplicationRecord
  belongs_to :store

  validates_presence_of :brand_name

  def to_s
    self.brand_name
  end
end
