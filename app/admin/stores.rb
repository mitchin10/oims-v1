ActiveAdmin.register Store do
  # Provide whitelist of the Store parameters
  permit_params :store_name, :address, :city, :state, :zipcode
end
