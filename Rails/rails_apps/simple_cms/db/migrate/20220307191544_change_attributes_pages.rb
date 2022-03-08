class ChangeAttributesPages < ActiveRecord::Migration[7.0]
  def change
    change_table :pages do |t|
      t.remove :position, :subject_id
      t.rename :content, :data
    end
  end
end


