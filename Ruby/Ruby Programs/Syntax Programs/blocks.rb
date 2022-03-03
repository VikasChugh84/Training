class Organisation

  def employee

    # Here the yield is calling a block from employee_info method "Name" and "Age" are parameters that will be assigned to |x,y| under block.
    
    yield "Name","Age"

  end

  def employee_info
    # This is block created for method employee in which we passing parameters under |x,y|
    employee {|x,y| puts"#{x}: Ranjit is 30#{y} years old."}
  end
end

Beryl=Organisation.new

# Calling the method employee_info i.e under which block is written for the method employee
Beryl.employee_info



