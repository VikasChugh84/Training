class AddPictureLinkColumnToPictures < ActiveRecord::Migration[7.0]
  def change
    add_column :pictures, :image_link, :string
  end
end
