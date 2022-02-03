# Define a module to work on DRY Concept and module must be constant
module Training
  def p_training
  end

  def t_training
  end
end

class Professor 
  include Training      
  #mixin in module
  attr_accessor :name, :department
  def initialize (name,department)
    self.name = name
    self.department = department
  end
end

Ranjit = Professor.new("Ranjit", "Science")
Vikram = Professor.new("Vikram", "Computers")

puts "* #{Ranjit.name} can provide both practical training on"

puts "* #{Vikram.name} can provide both practical and theortical training."

puts "* #{Ranjit.name} #{Ranjit.p_training}gives practical training on science."

puts "* #{Vikram.name} #{Vikram.t_training}gives theortical training on computers."











