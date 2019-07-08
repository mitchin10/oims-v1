class ProductBrand < ApplicationRecord
  has_many :categorizations
  has_many :stores, :through => :categorizations

  validates_presence_of :brand_name

  def to_s
    self.brand_name
  end
end
