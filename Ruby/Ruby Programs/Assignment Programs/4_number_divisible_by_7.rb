# Given an n-digit large number in form of string, check whether it is divisible by 7 or not. 
# Print 1 if divisible by 7, otherwise 0.

class Practice

  def divisible_number(num)
  	reminder = num.to_i % 7
  	if reminder.eql? 0
  	  puts "1-number is divisible by 7"
  	else
  	  puts "0-number is not divisible by 7"
  	end
  end

end

code = Practice.new
code.divisible_number('78673475')