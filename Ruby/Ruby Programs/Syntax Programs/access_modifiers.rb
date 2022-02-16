class Employee 
  attr_accessor :name

  def initialize (name,role)
    @name = name
    @role = role
  end
  
  def role
    puts "* #{@name} working here as #{@role} and thier age is #{@age} and mail id is #{@mail_id}."
  end
  
  # Here we can call the private method under another method with in the class
  def cross_check_private_method
   puts "* #{@name} is puntual #{update_employee_info}."
  end

  private
  # update_employee_info is declared as private method
  def update_employee_info 
    return 'employee'
  end

end

Ranjit = Employee.new('Ranjit','QA Engineer')

# To access the private method we can call it this method which can access the private method.
Ranjit.cross_check_private_method

# Here the role is the public method and we can access it outside the class
Ranjit.role
