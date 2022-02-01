# To understand Instance Variable and Instance Methods Basic Workflow

class Employee 
  def initialize (name,role)
    @name = name
    @role = role
  end

  def role
    puts "#{@name} working here as #{@role}."
  end
end

Ranjit = Employee.new('Ranjit','QA Engineer')

# Puts Ranjit.role - Results as 'Ranjit working here as QA Engineer'

Vikram = Employee.new('Vikram','Software Developer')

# Puts Vikram.role - Results as 'Vikram working here as Software Developer'

Ranjit.role 
Vikram.role

# Here the different objects can access the single method as stated above 'Ranjit.role' and 'Vikram.role' and their output stored in @name and @role instance variables for specific object and returns us the value.

