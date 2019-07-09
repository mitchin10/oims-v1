ActiveAdmin.register Store do
  # Provide whitelist of the Store parameters
  permit_params :store_name, :address, :city, :state, :zipcode

  index do
    selectable_column
    column :store_name
    column :address
    column :city
    column :state
    column :zipcode
    actions
  end

  filter :store_name
  filter :city
  filter :state
  filter :zipcode

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs 'Store' do
      f.input :store_name
      f.input :address
      f.input :city
      f.input :state
      f.input :zipcode
    end
    f.actions
  end
end
