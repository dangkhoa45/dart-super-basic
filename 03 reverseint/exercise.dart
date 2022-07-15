// --- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// --- Examples
//   reverseInt(15) === 51
//   reverseInt(981) === 189
//   reverseInt(500) === 5
//   reverseInt(-15) === -51
//   reverseInt(-90) === -9

int reverseInt(int n) {
  return n > 0
      ? int.parse(reverse(n.toString()))
      : -int.parse(reverse((-n).toString()));
}

String reverse(String input) {
  return input.split("").reversed.join("");
}
