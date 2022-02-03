# Department is parent class whose properties are inherited by other classes.
class Department
  attr_accessor :age, :mail_id

  def initialize(age,mail_id)
    # Through super method defined under Science class it takes the value of name and subject and assign it to age and mail_id
    self.age = age
    self.mail_id = mail_id
  end

  def working_hours
    "Eight" 
  end
end

# Science is child class inheriting from parent class Department using symbol < for inheritance
class Science < Department
  attr_accessor :name, :subject
  def initialize(name,subject)
    # super function 2: when we define only super it takes arguments values under name, subject and automatically invoke to initialize method specified under parent class
    super
    
    # super function 3: It performs the same function as above and passing values to parent class. 
    # super(name,subject)
    
    # super function 4: It is used when the super class initialize has no arguments at all.
    # super()

    self.name = name
    self.subject = subject
  end
  
  # If same function/method defined here without super ruby checks the object's class first for the method before it looks in the superclass.
  def working_hours
    "Ten"
    # super function 1: super + defined to invoke working_hours method from parent class Department.Now working_hours method called from Department Class
    super +  " from Department class"
  end

end

# Computer is child class inheriting from parent class Department using symbol < for inheritance
class Computer < Department
  attr_accessor :name, :subject
  def initialize(name,subject)
    self.name = name
    self.subject = subject
  end
end

Jayant = Science.new("Jayant","physics")

Lapsu = Computer.new("Lapsu","DBMS")

puts "* #{Jayant.name} is under science department and teaches #{Jayant.subject}."

puts "* #{Lapsu.name} is under computer department and teaches #{Lapsu.subject}."

# Both objects of class Science and Computer are calling the method "working_hours" from parent class department 
puts "* Minimum working hours for #{Jayant.name} are #{Jayant.working_hours}."

puts "* Minimum working hours for #{Lapsu.name} are #{Lapsu.working_hours}."

# checking and Verify the function of super assigning values from subclass to parent class.
puts Jayant.age

puts Jayant.mail_id


