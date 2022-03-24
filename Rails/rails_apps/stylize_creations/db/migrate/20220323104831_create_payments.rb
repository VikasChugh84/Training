class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :order, null: false, foreign_key: true
      t.integer :status
      t.decimal :amount_received
      t.decimal :balance_amount
      t.datetime :received_on
      t.string :receipt_number

      t.timestamps
    end
  end
end
