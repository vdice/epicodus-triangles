require('rspec')
require('triangles')

describe(Triangle) do
  describe("#is_triangle?") do
    it("Returns true if shape is triangle") do
      test_triangle = Triangle.new(3, 3, 4)
      expect((test_triangle).is_triangle?).to(eq(true))
    end
    it("Returns false if shape is not triangle") do
      test_triangle = Triangle.new(3, 3, 7)
      expect((test_triangle).is_triangle?).to(eq(false))
    end
  end

  describe("#type") do
    it("Returns 'equilateral' if triangle is equilateral") do
      test_triangle = Triangle.new(3, 3, 3)
      expect(test_triangle.type()).to(eq('equilateral'))
    end
    it("Returns 'isosceles' if triangle is isosceles") do
      test_triangle = Triangle.new(3, 3, 4)
      expect(test_triangle.type()).to(eq('isosceles'))
    end
    it("Returns 'scalene' if triangle is scalene") do
      test_triangle = Triangle.new(2, 3, 4)
      expect(test_triangle.type()).to(eq('scalene'))
    end
    it("Returns 'Not triangle' if triangle is Not triangle") do
      test_triangle = Triangle.new(2, 3, 9)
      expect(test_triangle.type()).to(eq('Not triangle'))
    end
  end
end
