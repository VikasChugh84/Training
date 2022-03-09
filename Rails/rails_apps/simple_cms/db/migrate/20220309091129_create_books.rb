class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.integer :page_count
      t.date :published_on
      t.belongs_to :author, foreign_key: true

      t.timestamps
    end
  end
end
