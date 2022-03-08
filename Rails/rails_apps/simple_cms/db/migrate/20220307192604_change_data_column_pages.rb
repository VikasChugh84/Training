class ChangeDataColumnPages < ActiveRecord::Migration[7.0]
  def change
    change_column :pages, :data, :string
  end
end
