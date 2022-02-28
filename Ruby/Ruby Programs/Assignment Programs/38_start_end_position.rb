=begin
Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a
given target value.
If target is not found in the array, return [-1, -1]

Input - arr = [5,7,7,8,8,10], target = 8
Output: [3,4]
=end

class Practice
  def fetch_offset(int)
    arr = [5,7,7,8,8,10]
    arr_ind = []
    (0..arr.size).each do |i|
      if arr[i] == int
      	arr_ind << i
      end
    end
    print arr_ind
  end
end

code = Practice.new
# code.fetch_offset(8)

#-------------------------------- Referred from git using hash and chomp ---------------------

def hash_created(nums)
  hs = {}
  (0...nums.length).each do |i|
    if !hs.key?(nums[i])
      hs[nums[i]] = [i]
    else  
      hs[nums[i]] += [i]
    end
  end
  return hs
end 

#start and end position 
def start_end_position(nums, target)
  hs = hash_created(nums)
  if hs.key?(target)
    return hs[target]
  else  
    return [-1, -1]
  end
end

#main
nums = [5, 7, 7, 8, 8, 10]
print "Enter target : "
target = gets.chomp!.to_i 
puts "Start and End position : #{ start_end_position(nums, target) }"

