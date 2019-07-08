class CreateCategorizations < ActiveRecord::Migration[6.0]
  def change
    create_table :categorizations do |t|
      t.integer :store_id
      t.integer :product_brand_id

      t.timestamps
    end
    add_index :categorizations, [:store_id, :product_brand_id]
  end
end
