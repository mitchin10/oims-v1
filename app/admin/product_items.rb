ActiveAdmin.register ProductItem do

  permit_params :item_name, :sku, :product_brand_id

end
