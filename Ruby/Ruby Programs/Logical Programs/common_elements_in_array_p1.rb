#Logic_p1 - Finding Common Elements
class Emp
  def common_elements
    x = Array.new
    y = Array.new
    x_arr = x.push(2,4,8,54,6,7,9)
    y_arr = y.push(4,5,25,7,8,54)
    z = x & y
    puts z
  end
end

Vikram = Emp.new
Vikram.common_elements
