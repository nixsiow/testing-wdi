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
