class AddRoleToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_end_user, :boolean, :default => 1
  end
end
