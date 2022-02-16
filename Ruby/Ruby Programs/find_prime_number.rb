# User will enter any number check if that number is prime number or not.

class Arr

  def find_prime_number(x)
  	y = 1
    arr = []
    x.times.each do  
      arr << x%y 
      y = y+1
    end
    arr_count = []
    arr.each do|i|
      if i == 0
        arr_count << i
      end
    end
    if arr_count.size == 2
      puts "* #{x} is the prime number"
    else
      puts "* #{x} is not the prime number"
    end
  end
	
end

x = Arr.new
x.find_prime_number(79)
