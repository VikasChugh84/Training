# Find the second maximum number in array.

class Arr
  def own_way(arr)
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
    puts "* Second maximum number in array is #{arr[-2]}"
  end

  def refined_way(arr)
    x = (arr.sort).reverse
    puts "* Second maximum number in array is #{x[1]}"
  end
end

x = Arr.new
x.own_way([4,5,6,2,10])
x.refined_way([4,5,6,2,10])

#1st iteration - [4,5,6,2,10] - else

#2nd iteration - [4,5,6,2,10] - else

#3rd iteration - [4,5,2,6,10] - Swap 2 and 6

#4th iteration - [4,2,5,6,10] - Swap 2 and 5

#5th iteration - [2,4,5,6,10] - Swap 2 and 4












