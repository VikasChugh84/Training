class CreatePurchaseRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :purchase_records do |t|
      t.decimal :amount, null: false
      t.string :payment_mode, default: true
      t.string :bill_number
      t.date :purchase_date
      t.references :supplier, null: false, foreign_key: true
      t.timestamps
    end
  end
end
