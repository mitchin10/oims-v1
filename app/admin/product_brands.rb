ActiveAdmin.register ProductBrand do
 # Provide whitelist of the ProductBrand parameters
 permit_params :brand_name, categorizations_attributes: [:id, :store_id, :categorization_id, :_destroy], stores_attributes: [:id, :store_name, :_destroy], store_ids: []

 # index do
 #   selectable_column
 #   column :brand_name
 #   column :stores do |store_name|
 #     store_name.stores.map { |sn| sn.store_name }
 #   end
 #   actions
 # end

 show do |p_d|
   attributes_table do
     row :brand_name
     row :stores do |s_n|
       s_n.stores.map { |sn| sn.store_name }.join(", ").html_safe
     end
     row :created_at
     row :updated_at
   end
 end

 form do |f|
   f.semantic_errors *f.object.errors.keys
   f.inputs "Product Brand" do
     f.input :brand_name
     f.input :store_ids, label: "All Store", as: :check_boxes, collection: Store.all
     f.actions
   end
 end
end
