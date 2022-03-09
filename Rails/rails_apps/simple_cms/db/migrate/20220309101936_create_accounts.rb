class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :account_type
      t.integer :account_number
      t.belongs_to :supplier, foreign_key: true
      t.timestamps
    end
  end
end
