class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :phone_number
      t.string :address
      t.string :city
      t.string :state
      t.string :pin_code
      t.string :gst_number
      t.timestamps
    end
  end
end
