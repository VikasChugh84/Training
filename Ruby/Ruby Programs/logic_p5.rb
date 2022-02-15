#Cricket Balls to Overs!

#In cricket, an over consists of six deliveries a bowler bowls from one end. Create a function that takes the number of balls bowled by a bowler and calculates the number of overs and balls bowled by him/her. Return the value as a float, in the format overs.balls.

class Cricket

  def own_way(x)
  	y = 6
  	z = 0.0
    while x >= y
      x = x-y 
      z += 1.0
    end
    z += x.to_f/10
    puts z
  end

  def refined_way(x)
  	y = "#{x / 6}.#{x % 6}".to_f
  	puts y
  end
  
end

Bowler = Cricket.new
Bowler.own_way(33)
Bowler.refined_way(33)
