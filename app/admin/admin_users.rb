ActiveAdmin.register AdminUser do
  permit_params :name, :email, :password, :password_confirmation

  index do
    selectable_column
    column :name
    column :email
    column :created_at
    actions defaults: false do |user|
      item "View", [:admin, user], class: "member_link"
      item "Edit", [:edit, :admin, user], class: "member_link"
    end
  end

  filter :name
  filter :email
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
