# Create a function that takes an array of numbers and returns a new array containing only prime numbers.

class Practice
  def return_prime_numbers(arr)
    arr = arr.grep(/\d+/, &:to_i)
    prime_arr = []
    arr.each do |x|
      i = 1
      arr =[]
      while i <= x
        if x % i == 0
          arr << 0
        end
        i = i+1
      end
      if arr.count == 2
        prime_arr << x
      end
    end
    print prime_arr.sort
  end
end

code = Practice.new
code.return_prime_numbers(["45","89","5","55","7","73","34","11"])