# Understanding Class Methods and Class Variables

class Employee
  attr_accessor :name, :working_hours

  # Class variables begin with @@
  @@number_of_employees = 1
  @@total_working_hours = 0

  # Define a constant here that minimum working time for any employee is atleast 8 hours
  MINIMUM_WORKING_TIME = 8

  def initialize(name,working_hours)
    self.name = name
    # Add minimum working time to employee assigned working hours
    self.working_hours = working_hours + MINIMUM_WORKING_TIME
    @@number_of_employees += 1
    @@total_working_hours += self.working_hours
    # It shows here we can access class variables within an instance method
    puts "* #{self.name} has joined the organisation and their working hours are #{self.working_hours}."
  end

  # Defining a class method name with the reserved word 'self. to count total numbers of employees joined
  def self.employee_count
    puts "* Number of employees working is #{@@number_of_employees}."
  end

  # Defining a class method name with the reserved word 'self. to calculate total numbers of employees working time
  def self.total_working_hours
    puts "* Total number of working hours of all employees are #{@@total_working_hours}"
  end
end

# Call the employee_count i.e class Method
Employee.employee_count

# Initialized new instance/object of class 
Ajay = Employee.new("Ajay",2)

# Initialized new instance/object of class 
Nitin = Employee.new("Nitin",4)

# Call the name method 
Ajay.name

# Call the name method 
Nitin.name

# ReCall the employee_count i.e class Method to check the updated employees count
Employee.employee_count

# Call the total_number_of_working_hours i.e another class Method
Employee.total_working_hours





