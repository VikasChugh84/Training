class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :state
      t.string :pincode
      t.date :date_of_birth
      t.references :role, foreign_key: true
      t.string :provider
      t.string :uid
      t.timestamps
    end
  end
end
