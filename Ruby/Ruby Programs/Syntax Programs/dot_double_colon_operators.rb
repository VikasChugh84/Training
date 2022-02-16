# Understanding of (.) and (..) Operators and modules and Class method/variable


# Declare the Global Constant
Emp_Age = 40

# Defined a module for understanding
module Age_limit
 
  # Declare the Local Constant under the module
  Emp_Age = 20

  # Use of :: Operator inside module - We called the Global Constant through it and assign the new value '100'
  ::Emp_Age = 42

  def group_a
  	puts age = (18..30)
  end

  def group_b
    puts age = (28...52)
  end
end
  
class Age

  # Define Constant under class
  Staff_Age = 20

  include Age_limit # Use of mixin
  @@avg_age_group = (29..50)
  
  # Defined a class method
  def self.average_age
    puts "* Employees average age group is currently working is #{@@avg_age_group}"
  end

  def role
  	"Puts Test"
  end


end

Vikram_age_group = Age.new

# Call the method defined under module
puts Vikram_age_group.group_b

# Display Global Constant Emp_Age & output will be 42 as we called global constant under module and assign a new age to it.
puts Emp_Age

# Use of :: Operator outside module - We called the local constant defined specific module.
puts Age_limit::Emp_Age

# Use of :: Operator outside class - We called the local constant defined under specific class.
puts Age::Staff_Age

# Use of (.) Operator - We called the methods of class to class.
puts Age.new.role