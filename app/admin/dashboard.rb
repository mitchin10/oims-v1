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
        end
      end # column
    end # columns
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
