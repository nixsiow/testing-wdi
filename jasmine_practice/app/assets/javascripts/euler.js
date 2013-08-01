function getMulThreeFive(upto) {
  var result = [];

  // Consider every number between 1 and upto.
  for (var i = 1; i < upto; i++) {
    // Add multiples of 3 or 5 to our results.
    if (i % 3 === 0 ||
        i % 5 === 0) {
      result.push(i);
    }
    console.log(i, i % 3, i % 5, result.join(', '));
  }

  return result;

}

function largestPrimeFactor(n) {
  var factors = [];

  // Find prime factors of n

  // Return largest prime factor.

  return result;

  var is_prime = function (x) {
    // return true if x is prime.
  }
}
