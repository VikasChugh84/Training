class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.string :name 
      t.string :image_link
      t.string :image_size
      t.references :imageable, polymorphic: true
      
      t.timestamps
    end
  end
end
