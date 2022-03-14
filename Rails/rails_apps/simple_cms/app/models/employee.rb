class Employee < ApplicationRecord 
  self.table_name = "set_employees"
  validates :name, length: { is: 7, message: "Length must be 7" }, allow_blank: true

end
