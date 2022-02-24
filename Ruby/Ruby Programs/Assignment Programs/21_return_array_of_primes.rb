# Write a function that takes an integer (less than 1000) and return an array of primes till that number.

# Prime numbers program done twice before..this one is using method.

class Practice
  require 'prime'

  def using_prime_method(int)
    Prime.each(int) do |prime|
      p prime 
    end
  end
end

code = Practice.new
code.fetch_prime_numbers(20)
