# Write a function which takes an integer (positive) and return an array of factorials of each index in index
# position till given number.

# input = 6 (positive integer)

# Approach = fetch the array of numbers till 1 do the factorial of 1st element and then of array.

# output = [6,5,4,3,2,1]
# index_factorial => [720,120,24,6,2,1]

class Practice
  def index_factorial(x)
  	arr = []
  	(1..x).count do |i|
  	  arr << i
  	end
    arr = arr.reverse

    arr_fact = []
    arr.each do |e|
      i = 1
      n = 1
      while i <= e 
        n = i * n
        i = i + 1
      end
      arr_fact << n
    end
    puts arr_fact
  end
end

code = Practice.new
code.index_factorial(8)

