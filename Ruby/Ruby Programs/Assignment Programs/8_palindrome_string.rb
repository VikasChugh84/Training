# Given a string s, return true if it is a palindrome, or false otherwise

#Input - madam / nitin / 202202

#check - either palindrome or not

class Practice
  def check_palindrome(str)
    str_char = ''
    n = str.length-1
    str.length.times do 
      str_char << str[n]
      n=n-1
    end
    if str.eql? str_char
      puts "#{str} is palidrome word"
    else
      puts false
    end
  end
end

code = Practice.new
code.check_palindrome('racecar')
