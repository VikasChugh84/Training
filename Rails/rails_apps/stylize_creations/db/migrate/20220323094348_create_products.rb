class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :code
      t.string :style
      t.string :fabric
      t.decimal :price, null: false
      t.references :category, null: false, foreign_key: true
      t.decimal :supplier_price
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
