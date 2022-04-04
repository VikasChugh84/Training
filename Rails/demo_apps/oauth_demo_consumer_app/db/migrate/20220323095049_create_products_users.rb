class CreateProductsUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :products_users, id: false do |t|
      t.belongs_to :user
      t.belongs_to :product

      t.timestamps
    end
  end
end
