#Fibonacci Sequence

#The Fibonacci Sequence is the sequence of numbers (Fibonacci Numbers) whose sum is the two preceding numbers (e.g. 0, 1, 1, 2, 3, etc). Using 0 and 1 as the starting values, create a function that returns an array containing all of the Fibonacci numbers less than 255.

class Practice
  def fibonacci_seq(x)
    arr = [0, 1]
    until x >= 255
      y = arr[-1] + arr[-2]
      x = y
      arr << x
    end
    arr.pop
    puts arr
  end
end

Pct = Practice.new
Pct.fibonacci_seq(0)
