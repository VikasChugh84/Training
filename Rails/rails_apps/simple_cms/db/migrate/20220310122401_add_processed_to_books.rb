class AddProcessedToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :processed, :boolean, default: true
  end
end
