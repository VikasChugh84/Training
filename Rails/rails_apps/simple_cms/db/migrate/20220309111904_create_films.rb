class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :name
      t.integer :budget
      t.datetime :released_on
      t.belongs_to :actor, foreign_key: true
      t.belongs_to :actress, foreign_key: true
      t.timestamps
    end
  end
end
