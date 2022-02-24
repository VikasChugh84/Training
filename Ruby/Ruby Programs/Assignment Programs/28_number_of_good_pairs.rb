# Given an array of integers nums, return the number of good pairs.
# A pair (i, j) is called good if nums[i] == nums[j] and i < j

#Input - [2,1,2,4,1,3]

# Output pair should be [2,2], [1,1] and thier offsets are [0,2], [1,4]

class Practice
  def fetch_good_pair
    arr = [2,1,2,4,1,3]
    arr_perm = arr.permutation(2).to_a
    pro_arr = []
    arr_perm.each do |i|
    if i.first == i.last
      pro_arr << i
    end
    end
    pro_arr.uniq
  end	
end

code = Practice.new
code.fetch_good_pair
