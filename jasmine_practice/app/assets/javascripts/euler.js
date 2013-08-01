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

  for (var i = Math.ceil(n / 2); i > 1; i--) {
    if ((n % i === 0) && is_prime(i)) {
      return i;
    }
  }

  return n;
}

// Returns true if x is prime, false otherwise.
function is_prime (x) {
  var prime = true; // Assume x is prime.

  // Search numbers from 2 to x/2.
  for (var i = 2; i < x/2; i++) {
    if (x % i === 0) {
      prime = false; // Factor found.
      break; // Abort.
    }
  }
  return prime; // Return status.
}

