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

// Recursive solution == we also use this function to test for primes with
// largestPrimeFactor === 1
function largestPrimeFactor(x) {
  // Optimisation: the largest prime factor of x < Math.sqrt(x)
  var max = Math.ceil(Math.sqrt(x));

  // Search backwards. First prime factor we find is the 'highest'.
  for (var i = max; i > 1; i--) {
    if (x % i === 0 && largestPrimeFactor(i) === 1)
      return i;
  }

  return 1;
}