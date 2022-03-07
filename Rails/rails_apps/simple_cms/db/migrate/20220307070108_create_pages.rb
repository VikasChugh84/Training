class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :permalink
      t.integer :position
      t.boolean :visible
      t.text :content
      t.references :subject
      
      t.timestamps
    end
  end
end
