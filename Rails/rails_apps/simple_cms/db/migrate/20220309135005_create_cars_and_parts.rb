class CreateCarsAndParts < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.timestamps
    end

    create_table :spare_parts do |t|
      t.string :part_number
      t.timestamps
    end
    
    create_table :cars_and_spare_parts, id: false do |t|
      # pass id: false to create_table because that table does not represent a model
      t.belongs_to :car
      t.belongs_to :spare_part
      t.timestamps
    end
  end
end

