# Given an integer array nums, move all the even integers at the beginning of the array followed by all the
# odd integers. Return any array that satisfies this condition.

#Input - [3,2,7,2,1,6]

#output - [2,4,6,1,3,7]

class Practice
  def fetch_even_to_odd_arr
    arr = [3,2,7,2,1,6]
    arr_even = []
    arr_odd = []
    pro_arr = []
    arr.each do |i|
      if i.even? == true
        arr_even << i
      else
        arr_odd << i
      end
    end
    pro_arr << arr_even << arr_odd
    print pro_arr.reduce(:concat)
  end
end

code = Practice.new
code.fetch_even_to_odd_arr

