class AddColumnsToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :title, :string
    add_column :books, :year_published, :integer
    add_column :books, :price, :decimal
    add_column :books, :out_of_print, :boolean
    add_column :books, :views, :integer
    add_reference :books, :supplier, foreign_key: true, index: false
  end
end

