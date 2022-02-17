#Print Armstrong number between 1 to 5000

class Armstrong
  def armstrong_number(x)
    while x <= 5000
      y = x.to_s.split('').grep(/\d+/, &:to_i)
      n = y.count
      z = []
      arr = []
      y.each do |i|
        z << i ** n
        i = i+1
      end
      if x == z.sum
        case when n < 2 
          if x == 0 || x == 1
            arr << x
          end
        else
          arr << x
        end
      end
      x = x +1
      puts arr
    end
  end
end

x = Armstrong.new
x.armstrong_number(0)

