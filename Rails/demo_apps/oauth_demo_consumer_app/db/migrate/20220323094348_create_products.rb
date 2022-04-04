class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.string :style
      t.string :fabric
      t.decimal :price
      t.references :category, foreign_key: true
      t.decimal :supplier_price
      t.references :supplier, foreign_key: true

      t.timestamps
    end
  end
end
