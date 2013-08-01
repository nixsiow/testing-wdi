describe("The first Project Euler problem", function () {
  describe("multiples of 3 or 5", function () {
    var results;

    beforeEach(function () {
      results = getMulThreeFive(10);
    });

    it("should find multiples of 3 or 5 less than 10", function () {
      expect(results).toEqual([3,5,6,9]);
    });
  });
});

describe("The third Project Euler problem", function () {
  describe("largest prime factor of 600851475143", function () {
    var result;

    beforeEach(function () {
      result = largestPrimeFactor(600851475143);
    });

    it("should find the largest prime factor", function () {
      expect(result).toBe(6857);
    });
  });
});
