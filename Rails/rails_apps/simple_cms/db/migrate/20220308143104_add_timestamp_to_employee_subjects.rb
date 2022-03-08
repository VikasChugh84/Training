class AddTimestampToEmployeeSubjects < ActiveRecord::Migration[7.0]
  def change
    add_timestamps(:employees_subjects, null: true)
  end
end
