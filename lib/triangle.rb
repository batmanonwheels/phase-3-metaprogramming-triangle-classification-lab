class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if !@side1.negative? && !@side2.negative? && !@side3.negative?
      if @side1 != 0 && @side2 != 0 && @side3 != 0
        if @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side1 + @side3 > @side2
          if @side1 == @side2 && @side2 == @side3
            :equilateral
          elsif @side1 == @side2 && @side2 != @side3 || @side1 != @side2 && @side2 == @side3 || @side1 == @side3
            :isosceles
          elsif @side1 != @side2 && @side2 != @side3
            :scalene
          else
            raise TriangelError, "Who knows what the issue is??"
          end
        else
          raise TriangleError, "The sum of the lengths of any two sides of a triangle always exceeds the length
          of the third side."
        end
      else
        raise TriangleError, "Each side must be larger than 0."
      end
    else
      raise TriangleError, "There can't be any negative sides"
    end
  end


  class TriangleError < StandardError
    puts "Each side must be larger than 0. The sum of the lengths of any two sides of a triangle always exceeds the length
      of the third side. This is a principle known as the _triangle inequality_. "
  end
end


# def kind
#   if @side1 == @side2 && @side2 == @side3
#     if @side1 != 0 && !@side1.negative? && !@side2.negative? && !@side3.negative?
#       :equilateral
#     else
#       raise TriangleError
#     end
#   elsif @side1 == @side2 && @side2 != @side3 || @side1 != @side2 && @side2 == @side3 || @side1 == @side3
#     if @side1 != 0 && @side3 != 0 && !@side1.negative? && !@side2.negative? && !@side3.negative?
#       :isosceles
#     else
#       raise TriangleError
#     end
#   elsif@side1 != @side2 && @side2 != @side3
#     if @side1 != 0 && @side3 != 0 && !@side1.negative? && !@side2.negative? && !@side3.negative?
#       :scalene
#     else
#       raise TriangleError
#     end
#   else
#     raise TriangleError
#   end
# end