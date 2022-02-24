# Given an unsorted array Arr of size N of positive integers. One number 'A' from set {1, 2, ...N} is missing
# and one number 'B' occurs twice in array. Find these two numbers.

# arr[] = {2,8,4,9,3,6,2,1,1}

# Output: Missing = 5, Repeating = 1

class Practice
  def fetch_numbers(arr)
    arr = arr.grep(/\d+/, &:to_i).sort
    i = 0
    n = 1
    rep_num = []
    while (i < arr.size)
      if arr[i] == arr[n]
        rep_num << arr[i]
      end
      n = n +1
      i = i+1
    end
    puts "Repeated numbers are #{rep_num}"
    arr = arr.uniq!
    mis_num = []
    (arr.size-1).times do
      if arr.last-1 != arr[-2]
        mis_num << arr[-1] - 1
      end
      arr.pop
    end
    puts "Missing numbers are #{mis_num}"
  end
end

code = Practice.new
code.fetch_numbers(['2','8','4','9','3','6','2','1','1'])
