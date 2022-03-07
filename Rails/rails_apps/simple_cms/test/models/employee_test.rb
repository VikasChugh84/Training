require "test_helper"

class EmployeeTest < ActiveSupport::TestCase
  set_fixture_class set_employees: Employee
  fixtures :set_employees
end
