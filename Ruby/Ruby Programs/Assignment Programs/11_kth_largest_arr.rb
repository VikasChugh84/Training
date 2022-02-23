# You are given an array of strings nums and an integer k. Each string in nums represents an integer without leading zeros.

# Return the string that represents the kth largest integer in nums.

# Note: Duplicate numbers should be counted distinctly. For example, if nums is ["1","2","2"], "2" is the first
# largest integer, "2" is the second-largest integer, and "1" is the third-largest integer.

# Input - nums = ['4','2','5','8','6','8']
#         k = '2'

# Output require - Fetch kth largest number from nums array => Output should be 8

class Practice

  def way_one(k)
    nums = ['4','2','5','8','6','8']
    fetch_max_nums = nums.max(k)
    kth_lar_elem = fetch_max_nums[-1]
    puts kth_lar_elem
  end

  def way_two(k)
    nums = ['4','2','5','8','6','8']
    arr = nums.grep(/\d+/, &:to_i)
    arr.each do |i|
      i = 0
      n = 1
      while (n < arr.length)
        if arr[i] > arr[n]
          x = arr[i] 
          arr[i] = arr[n]
          arr[n] = x
        end
        i += 1
        n += 1
      end
    end  
    fetch_max_nums = arr.reverse
    kth_lar_elem = fetch_max_nums.values_at(k-1)
    puts kth_lar_elem
  end
end

code = Practice.new
code.way_one(4)
code.way_two(4)
