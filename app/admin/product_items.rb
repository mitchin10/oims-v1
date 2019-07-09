ActiveAdmin.register ProductItem do

  permit_params :item_name, :sku, :product_brand_id

  index do
    selectable_column
    column :item_name
    column :product_brand do |brand|
      link_to brand.product_brand.brand_name, admin_product_brand_path(brand.product_brand_id)
    end
    column :sku
    actions
  end

  filter :item_name
  filter :product_brand, as: :check_boxes, collection: proc { ProductBrand.all }
  filter :sku

end
