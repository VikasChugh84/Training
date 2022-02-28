# Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range
# that is missing from the array.

# Input - [0,1,2,4,6,3,7,8]

# Output - Missing Number - 5 

class Practice
  def missing_number
    arr = [0,1,2,3,4,6,7,8]
    mis_num = ''
    (arr.size-1).times do
      if arr.last-1 != arr[-2]
        mis_num = arr[-1] - 1
      end
      arr.pop
    end
    puts "Missing number is #{mis_num}"
  end
end

code = Practice.new
code.missing_number
