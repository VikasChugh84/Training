# pass hash in parameters
class Emp
  def role(user)
    @name = user[:name]
    @role = user[:role]
    puts "#{@name} is #{@role}"
  end
end

Vikram = Emp.new
Vikram.role ({name: 'Vikram', age: 10, role: 'employee', working_capacity: '8..12'})
