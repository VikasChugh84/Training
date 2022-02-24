#Given an array nums of size n, return the majority element. The majority element is the element that
#appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

# Input = {3, 3, 4, 2, 4, 4, 2, 4, 4}

# How it works => 4 is available 5 times in array and array count is 9 so half of array count is 4 and 
# count of 4 is greater than 4 takes it as majority element.

class Practice 
  def fetch_majority_element(arr)
    arr = arr.grep(/\d+/, &:to_i)
    arr_half = arr.size/2
    max_elem = arr.each{|i| arr.count(i)}.max
    max_elem_count = arr.map{|i| arr.count(i)}.max
    if max_elem_count > arr_half
      puts "#{max_elem} is the majority element"
    end
  end
end

code = Practice.new
code.fetch_majority_element(['3','3','4','2','4','4','2','4','4'])
