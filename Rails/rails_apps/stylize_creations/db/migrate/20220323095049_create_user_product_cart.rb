class CreateUserProductCart < ActiveRecord::Migration[7.0]
  def change
    create_table :user_product_carts, id: false do |t|
      t.belongs_to :user
      t.belongs_to :product

      t.timestamps
    end
  end
end
