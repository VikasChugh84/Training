# Loop Programming

class Arr

  def initialize(x)
    @x = x
  end

  #find the smallest number in array
  def find_smallest_number
    for i in @x do
   	  if i == @x.min
   	    puts i
   	  end  
   	end
  end
  
  #find the integer appears odd number of times
  def odd_integer
    number = @x.select{|v| @x.count(v) % 2 == 1}.uniq[0]
    puts number
  end
   
end

Arx = Arr.new(["32","43","45","46","31","28","18"])

Vrx = Arr.new([1, 1, 2, 2, 3, 3, 5, 5, 4, 5, 3])

Arx.find_smallest_number

Vrx.odd_integer
