ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do

    columns do
      column do
        panel "My Stores" do
          table_for Store.order("store_name asc") do
            column :store_name do |sn|
              link_to sn.store_name, [:admin, sn]
            end
          end
          strong { link_to "All Stores", [:admin, :stores] }
        end

        panel "Brands" do
          table_for ProductBrand.order("brand_name asc").limit(10) do
            column :brand_name do |bn|
              link_to bn.brand_name, [:admin, bn]
            end
            column :store do |sn|
              link_to sn.store.store_name, admin_store_path(sn.store_id)
            end
          end
          strong { link_to "All Product Brands", [:admin, :product_brands] }
        end

        panel "Products" do
          table_for ProductItem.order("item_name asc").limit(10) do
            column :item_name do |i_n|
              link_to i_n.item_name, [:admin, i_n]
            end
            column :brand_name do |bn|
              link_to bn.product_brand.brand_name, admin_product_brand_path(bn.product_brand_id)
            end
          end
          strong { link_to "All Products", [:admin, :product_items] }
        end
      end # column
    end # columns
  end # content
end
