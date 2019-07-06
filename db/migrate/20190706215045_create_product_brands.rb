class CreateProductBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :product_brands do |t|
      t.string :brand_name
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
