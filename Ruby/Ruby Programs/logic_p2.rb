#Logic_p1 - Increment to Top

#Create a function that returns the total number of steps it takes to transform each element to the maximal element in the array. Each step consists of incrementing a digit by one.

class Emp

  def s_count
    x = Array.new
    x_arr = x.push(4,7,10,15)
    max_elem = x_arr.max  
    step_count = 0
    x_arr.each { |i| step_count += (max_elem - i) }
    puts step_count
  end
end

Vikram = Emp.new
Vikram.s_count



