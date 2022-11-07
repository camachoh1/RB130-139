
class Triangle

  def initialize(side1, side2, side3)
    valid_triangle(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid_triangle(a, b, c)
    sides = [a, b, c]
    raise(ArgumentError) unless sides.all? {|side| side > 0} && 
    (a < b + c && b < a + c && c < a + b )
  end

  def kind
    sides = [@side1, @side2, @side3]

    return "equilateral" if sides.all? {|side| side == sides[0]}
    return "scalene" if sides.all? {|side| sides.count(side) == 1}
    "isosceles"
  end 
end 
