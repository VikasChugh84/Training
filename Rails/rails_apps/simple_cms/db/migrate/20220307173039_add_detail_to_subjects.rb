class AddDetailToSubjects < ActiveRecord::Migration[7.0]
  def change
    add_column :subjects, :detail, :text
    add_index  :subjects, :detail
  end
end
