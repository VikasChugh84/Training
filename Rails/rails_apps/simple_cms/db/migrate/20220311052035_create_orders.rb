class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.datetime :date_submitted
      t.integer :status
      t.decimal :subtotal, precision: 5, scale: 2
      t.decimal :shipping, precision: 5, scale: 2
      t.decimal :tax, precision: 5, scale: 2
      t.decimal :total, precision: 5, scale: 2
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
