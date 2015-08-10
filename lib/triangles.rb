class Triangle
  define_method(:initialize) do |a, b, c|
    sorted_sides = [a, b, c].sort()
    @side_one = sorted_sides[0]
    @side_two = sorted_sides[1]
    @hypotenuse = sorted_sides[-1]
  end

  define_method(:is_triangle?) do
    @side_one.+(@side_two).>(@hypotenuse)
  end

  define_method(:type) do

    if !is_triangle?
      "Not triangle"
    elsif @side_one.==(@side_two).&(@side_one.==(@hypotenuse))
      "equilateral"
    elsif @side_one.==(@side_two).|(@side_one.==(@hypotenuse)).|(@side_two.==(@hypotenuse))
      "isosceles"
    else
      "scalene"
    end
  end
end
