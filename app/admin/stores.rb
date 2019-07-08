ActiveAdmin.register Store do
  # Provide whitelist of the Store parameters
  permit_params :store_name, :address, :city, :state, :zipcode, categorizations_attributes: [:id, :produc_brand_id, :categorization_id, :_destroy], product_brand_ids: []

  index do
    selectable_column
    column :store_name
    column :address
    column :city
    column :state
    column :zipcode
    actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Store' do
      f.input :store_name
      f.input :address
      f.input :city
      f.input :state
      f.input :zipcode
    end
    f.inputs 'Product Brands' do
      f.input :product_brands, label: "All brands"
    end
    f.actions
  end
end
