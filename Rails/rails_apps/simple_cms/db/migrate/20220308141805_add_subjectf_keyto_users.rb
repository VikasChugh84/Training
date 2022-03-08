class AddSubjectfKeytoUsers < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :users, :subjects
  end
end
