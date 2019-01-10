# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if a==b && b==c && a==c
    if [a, b, c].all?{|a| a==0 }
      raise TriangleError, "Not a Triangle"
    end
    :equilateral
  elsif b==c || a==c || a==b
    if [a, b, c].all?{|x| x<=0 } || a+b<=c || a+c<=b || b+c<=a
      raise TriangleError, "Irrelevant sides"
    end
    :isosceles
  else
    if [a, b, c].all?{|x| x<=0 } || a+b<=c || a+c<=b || b+c<=a
      raise TriangleError, "Irrelevant sides"
    end
    :scalene
  end
  #(a==b? (a==c? :equilateral : (b==c? :isosceles : :scalene)) : (b==c? :isosceles : :scalene))
  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
  
end
