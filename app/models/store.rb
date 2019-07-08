class Store < ApplicationRecord
  has_many :categorizations
  has_many :product_brands, :through => :categorizations

  validates_presence_of :store_name, :address, :city, :state, :zipcode

  accepts_nested_attributes_for :product_brands, allow_destroy: true

  def to_s
    self.store_name
  end
end
