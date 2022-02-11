
#Create a function that takes two numbers as arguments (num, length) and returns an array of multiples of num until the array length reaches length.

class Sub

  # Method 1
  def arr_val_way_1(num,length)
    arr = []
    length.times{|i| arr << num *(i+1)}
    # uses times method of length - integer class
    puts arr
  end
  
  # Method 2
  def arr_val_way_2(num,length)
    arr = (1..length).to_a.map{|x| x * num}
    # uses hash class (1..length) to convert into array
    puts arr
  end

end

x = Sub.new

x.arr_val_way_1(2,10)

#x.arr_val_way_2(2,10)