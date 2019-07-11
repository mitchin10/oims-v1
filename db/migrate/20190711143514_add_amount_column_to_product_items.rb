class AddAmountColumnToProductItems < ActiveRecord::Migration[6.0]
  def change
    add_column :product_items, :amount, :integer
  end
end
