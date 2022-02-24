# Write a function which takes an integer (positive) and return an array of Fibonacci number of each index in
# index position till given number.

# input - 8

# output -   [0,1,2,3,4,5,6,7,8]

#fibonacci - [0,1,1,2,3,5,8,13] 

class Practice
  def fibonacci_series(x)
    fib_arr = [0,1]
    (x-2).times do
    fib_arr << fib_arr[-1] + fib_arr[-2]
    end
    puts fib_arr
  end
end

code = Practice.new
code.fibonacci_series(8)
