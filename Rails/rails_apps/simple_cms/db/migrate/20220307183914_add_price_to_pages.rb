class AddPriceToPages < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :price, :decimal, precision: 5, scale: 2
    add_reference :pages, :user, polymorphic: true, null: false
  end
end
