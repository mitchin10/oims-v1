ActiveAdmin.register Store do
  # Provide whitelist of the Store parameters
  permit_params :store_name, :address, :city, :state, :zipcode, product_brands_attributes: [:id, :brand_name, :_destroy]

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
    f.inputs do
      f.has_many :product_brands, heading: 'Edit Product Brands', allow_destroy: true, new_record: false do |a|
        a.input :brand_name
      end
    end
    f.actions
  end
end
