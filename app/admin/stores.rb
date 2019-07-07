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
end
