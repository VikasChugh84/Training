class AddSubjectIdToPages < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :subject_id, :integer
  end
end
