require "pry"

class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind

    if [a, b, c].any? { |n| n <= 0 }
      begin
        raise TriangleError
      end
    end

    if a + b <= c || b + c <= a || a + c <= b
      begin
        raise TriangleError
      end
    end

    sides = [@a, @b, @c]
    if sides.uniq.length == 1
      :equilateral
    elsif sides.uniq.length == 2
      :isosceles
    elsif sides.uniq.length == 3
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end

# binding.pry
# 0