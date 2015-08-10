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
end
