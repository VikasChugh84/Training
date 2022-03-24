class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :order_number, null: false
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :payment_mode
      t.datetime :placed_on
      t.integer :status
      t.decimal :amount, precision: 5, scale: 2, null: false
      t.decimal :tax, precision: 5, scale: 2
      t.decimal :shipping, precision: 5, scale: 2
      t.decimal :net_amount, precision: 5, scale: 2

      t.timestamps
    end
  end
end

