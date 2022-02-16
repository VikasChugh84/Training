#Create a function that takes two lists of numbers sorted in ascending order and returns an array of numbers which are common to both the input arrays.

class Arf
  
  def arr_num(x,y)
    arr_x = x.split('').grep(/\d+/, &:to_i).sort
    arr_y = y.split('').grep(/\d+/, &:to_i).sort
    arr = arr_x.intersection(arr_y)
    puts arr
  end

end

x = Arf.new

x.arr_num("2345", "6482")

