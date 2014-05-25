# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Pseudocoding only for the methods I wrote.
# write a method called area that returns @width multiplied with @height
# write a method called perimeter that returns 2 times @width plus 2 times @height
# write a method called diagonal that takes the squareroot of width squared and height squared
# write a method called square? that compares @width and @height

# 3. Initial Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
  	@width * @height
  end

  def perimeter
  	@width*2 + @height*2
  end

  def diagonal
  	(@width**2 + @height**2)**(0.5)
  end

  def square?
  	@width == @height
  end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

rectangle = Rectangle.new(10, 20)
square = Rectangle.new(20, 20)

p "returns the correct area of a rectangle"
p rectangle.area == 200

p "returns the correct area of a square"
p square.area == 400

p "returns the correct perimeter of a rectangle"
p rectangle.perimeter == 60

p "returns the correct perimeter of a square"
p square.perimeter == 80

p "returns the correct diagonal of a rectangle"
p rectangle.diagonal == 22.360679774997898

p "returns the correct diagonal of a square"
p square.diagonal == 28.284271247461902

p "returns false for a rectangle" 
p rectangle.square? == false

p "returns true for a square"
p square.square? == true





# 5. Reflection 
# I had no problems with this exercise except for the diagonal.  I forgot
# the notation of exponents (**) and used ^.  Other than that, it was pretty straight
# forward.