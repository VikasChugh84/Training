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

Ranjit.role 
Vikram.role

