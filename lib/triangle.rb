# Triangle
# #kind
# returns :equilateral when all sides are equal
# returns :isosceles when any two sides are equal
# returns :scalene when no sides are equal
# raises an error for triangles with no size
# raises an error for triangles with negative sides
# raises an error for triangles violating triangle inequality




















class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a, b ,c)
    @a = a
    @b = b
    @c = c
   
  end
  
  def kind
    validate_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    
  end
end

  def sides_greater_than_zero?
    [a, b, c].all?(&:positive?)
    
  end

  def validate_triangle_inequality?
    a + b > c && a + c > b && b + c > a
    
  end

  def validate_triangle
    raise TriangleError unless sides_greater_than_zero? && validate_triangle_inequality?
  end

  class TriangleError < StandardError
    
  end
end
