class CreateProductItems < ActiveRecord::Migration[6.0]
  def change
    create_table :product_items do |t|
      t.string :item_name
      t.string :sku
      t.references :product_brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
