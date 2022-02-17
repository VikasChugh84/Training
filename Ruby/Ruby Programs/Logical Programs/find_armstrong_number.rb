#Print Armstrong number between 1 to 5000

class Armstrong
  def armstrong_number(x)
    y = x.to_s.split('').grep(/\d+/, &:to_i)
    n = y.count
    z = []
    y.each do |i|
      puts i
      z << i ** n
      i = i+1
    end
    if x == z.sum
      if n < 2
        case when n < 2 
          if x == 0 || x == 1
            puts "* #{x} is the armstrong number"
          else
            puts "* #{x} is not the armstrong number"
          end
        end
      else
      puts "* #{x} is the armstrong number"
      end
    else
      puts "* #{x} is not the armstrong number"
    end
  end
end

x = Armstrong.new
x.armstrong_number(10)

