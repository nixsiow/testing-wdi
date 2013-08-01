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

describe("Prime tester", function () {
  describe("returns true for prime numbers", function () {
    it("should return true for 23", function () {
      var result = is_prime(23);
      expect(result).toBe(true);
    });
  });

  describe("returns false for composite numbers", function () {
    it("should return false for 222", function () {
      var result = is_prime(222);
      expect(result).toBe(false);
    });
  });
});
