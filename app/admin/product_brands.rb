ActiveAdmin.register ProductBrand do
 # Provide whitelist of the ProductBrand parameters
 permit_params :brand_name, :store_id

 index do
   selectable_column
   column :brand_name
   column :store do |name|
     name.store.store_name
   end
   actions
 end

 filter :brand_name
 filter :store, as: :check_boxes, collection: proc { Store.all }

end
