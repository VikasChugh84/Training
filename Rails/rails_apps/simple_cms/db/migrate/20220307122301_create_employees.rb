class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.float :salary
      t.text :address
      t.string :gender

      t.timestamps
    end
  end
end
