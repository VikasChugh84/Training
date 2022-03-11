class CreateBooksOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :books_orders do |t|
      t.references :book
      t.references :order
      t.timestamps
    end
  end
end
