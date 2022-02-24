# Given an integer limit being the upper limit of the range of interest, implement a function that returns the
# last 15 palindromes numbers lower or equal to limit as an array sorted ascendingly.

# integer= limit upto 200

# output = Last 15 palindromes number between 11 to 200

class Practice
  def fetch_palindrome(lr,ur)
    limit = lr
    pal_arr = []
    while lr <= ur
      x = lr.to_s.chars
      y = x.reverse
      if x == y
        pal_arr << lr
      end
      lr = lr+1
    end
    puts pal_arr.take(limit)
  end
end

code = Practice.new
code.fetch_palindrome(11,200)

