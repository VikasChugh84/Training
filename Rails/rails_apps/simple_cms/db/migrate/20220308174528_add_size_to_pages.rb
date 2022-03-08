class AddSizeToPages < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :size, :string, :default => nil
  end
end
