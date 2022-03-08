class RemoveDetailFromSubjects < ActiveRecord::Migration[7.0]
  def change
    remove_column :subjects, :detail, :text
  end
end
