class CreateJoinTableEmployeeSubject < ActiveRecord::Migration[7.0]
  def change
    create_join_table :employees, :subjects do |t|
      t.index [:employee_id, :subject_id]
      t.index [:subject_id, :employee_id]
      # This will create employees_subjects seperate table with these two attributes.
    end
  end
end
