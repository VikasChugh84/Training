# To understand Instance Variable and Instance Methods Basic Workflow

class Employee 
  attr_accessor :name, :age, :mail_id, :birth_date
  # Ruby has a built-in way to automatically create getter and setter methods for us, using the attr_accessor method

  def initialize (name,age,mail_id,birth_date,role)
    self.name = name
    self.age = age
    self.mail_id = mail_id
    self.birth_date = birth_date
    @role = role
  end

  def role
    puts "* #{self.name} working here as #{@role} and thier age is #{self.age} and mail id is #{self.mail_id}."
  end

  def update_employee_info (age,mail_id,birth_date)
    self.age = age
    self.mail_id = mail_id
    self.birth_date = birth_date
    puts "* Age,mail id and birth date for #{self.name} is updated to #{self.age},#{self.mail_id},#{self.birth_date}"
  end

end

# Initialized new instance/object of class 
Ranjit = Employee.new('Ranjit',36,'ranjit@abc.com',"14-12-1989",'QA Engineer')

# Call method role - Output comes as 'Ranjit working here as QA Engineer'
Ranjit.role

# Initialized new instance/object of class
Vikram = Employee.new('Vikram',38,'vikram@abc.com',"20-09-1985",'Software Developer')

# Call method role - Output comes as 'Vikram working here as Software Developer'
Vikram.role

# Here the different objects can access the single method as stated above 'Ranjit.role' and 'Vikram.role' and their output stored in @name and @role instance variables for specific object and returns us the value.
 
# Call method name as getter method defined under attr_accessor
puts "* Employee name is #{Ranjit.name}."

# Call method name as setter method as attr_accessor takes symbol as argument
puts "* Update the employee name of Ranjit to #{Ranjit.name = 'Rahul'}."

# Call method update_employee_info 
Ranjit.update_employee_info(22,'ranjit@xyz.com',"12-12-2000")

# Call method update_employee_info
Vikram.update_employee_info(28,'vikram@xyz.com',"10-08-1994")