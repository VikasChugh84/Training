class Shape
  @@default_shape_value = 50
  
  def initialize(name,value)
    @name = name
    @value = value
  end

  def shape_value
    if @name == 'sqaure' && @value == 10
      @value = @value + @@default_shape_value
      puts "* Updated value for square is #{@value}"
    elsif @name == 'rectangle' && @value != 30
      @value = @value + @@default_shape_value
      puts "* Updated value for rectangle is #{@value}"
    else 
      @@default_shape_value = @value + @@default_shape_value
      puts "* Shape default value is upgraded to #{@@default_shape_value}"
    end
  end

end

Square = Shape.new("sqaure", 50)
Rectangle = Shape.new("rectangle", 100)
Circle = Shape.new("circle", 200)

Square.shape_value
Rectangle.shape_value
Circle.shape_value
