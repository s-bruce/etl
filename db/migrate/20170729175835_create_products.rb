class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :sku
      t.text :name
      t.text :description
      t.float :priceList
      t.string :taxonomy, array: true
      t.integer :targetValues, array: true

      t.timestamps
    end
  end
end
