require 'rails_helper'

RSpec.describe ProductBrand, type: :model do
  context "validation Product Brand model" do
    it "ensure Product Brand name presence" do
      product = ProductBrand.new(brand_name: "OPI").save
      expect(product).to eq(false)
    end

    it "ensure Product Brand store_id presence" do
      product = ProductBrand.new(store_id: "2").save
      expect(product).to eq(false)
    end

    it "ensure Product Brand ID presence" do
      product = ProductBrand.new(id: "1").save
      expect(product).to eq(false)
    end

    # it "should save" do
    #   product = ProductBrand.new(id: "1", store_id: "1", brand_name: "OPI").save
    #   expect(product).to eq(true)
    # end
  end
end
