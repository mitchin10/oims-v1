class Store < ApplicationRecord
  has_many :product_brands, dependent: :destroy
  accepts_nested_attributes_for :product_brands, allow_destroy: true

  validates_presence_of :store_name, :address, :city, :state, :zipcode

  def to_s
    self.store_name
  end
end
