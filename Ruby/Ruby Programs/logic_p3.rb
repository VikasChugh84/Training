#Factorize a Number

#Create a function that takes a number as its argument and returns an array of all its factors.

class Practice
  def factorize_number(x)
  	y = []
    (1..x).select{|y| if x.remainder(y) == 0 then p y end}
  end
end

Pct = Practice.new
Pct.factorize_number(8)