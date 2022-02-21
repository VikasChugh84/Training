# Swap the numbers in variable without using third variable

class Practice

  def swap_numbers(x,y)
    puts "Default value of x is #{x}"
    puts "Default value of y is #{y}"
    if x > y
      (x-y).times do
        x = x-1
        y = y+1
      end
    else
      (y-x).times do
        y = y-1
        x = x+1
      end
    end
    puts "* Updated value of x is #{x}"
    puts "* Updated value of y is #{y}"
  end

end

prg = Practice.new
prg.swap_numbers(78,92)