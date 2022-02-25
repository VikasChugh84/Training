# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

#Symbol       Value
#I             1
#V             5
#X             10
#L             50
#C             100
#D             500
#M             1000

# Write a function which takes roman number and return integer corresponding to that roman number.

class Practice
  def roman_to_int(hs)
  	str = hs.fetch(:str)
  	arr = str.chars
  	v = 0
  	i = 0
  	roman_int = ''
  	(0..3).each do |n|
  	  if arr[n] == hs.key(5).to_s
  	    v = hs[:v]
      else
      	if arr[n] == hs.key(1).to_s
          i = i +1
      	end
      end
    end
    v = v.to_s
    i = i.to_s
    puts roman_int << v << i
  end
end

code = Practice.new
code.roman_to_int({v:5, i:1, str:"viii"})