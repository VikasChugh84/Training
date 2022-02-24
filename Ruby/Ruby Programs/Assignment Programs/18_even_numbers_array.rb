# Write a function which takes an array of integers, return how many of them contain an even number of
# digits.

class Practice
  def fetch_even_number_array(arr)
    arr = arr.grep(/\d+/, &:to_i)
    arr_even = []
    arr.each do |i|
      if i.even? then 
      	arr_even << i
      end
    end
    return arr_even
  end

  def another_way(arr)
    arr = arr.grep(/\d+/, &:to_i)
    arr.map{|i| if i.even? then p i end}.compact
    print arr
  end
end

code = Practice.new
print code.fetch_even_number_array(["23","44", "312", "35", "56", "75"])
#code.another_way(["23","44", "312", "35", "56", "75"])
