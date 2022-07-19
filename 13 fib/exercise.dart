// --- Directions
// Print out the n-th entry in the fibonacci series.
// The fibonacci series is an ordering of numbers where
// each number is the sum of the preceeding two.
// For example, the sequence
//  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
// forms the first ten entries of the fibonacci series.
// Example:
//   fib(4) === 3

int fib(int n) {
  if (n == 1 || n == 2) return 1;
  return fib(n - 2) + fib(n - 1);
}

int fib2(int n) {
  final arr = [];
  for (var i = 1; i <= n; i++) {
    (i == 1 || i == 2) ? arr.add(1) : arr.add(arr[i - 3] + arr[i - 2]);
  }
  return arr[n - 1];
}
