class AddUserRefToSubjects < ActiveRecord::Migration[7.0]
  def change
    add_reference :subjects, :user, foreign_key: true
    # This will add user_id in subjects table as reference key
  end
end
