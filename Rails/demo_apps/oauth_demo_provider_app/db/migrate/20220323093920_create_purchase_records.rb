class CreatePurchaseRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_records do |t|
      t.decimal :amount
      t.string :payment_mode
      t.string :bill_number
      t.date :purchase_date
      t.references :supplier, foreign_key: true
      t.timestamps
    end
  end
end
