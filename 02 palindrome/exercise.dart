// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false

bool palindrome(String input) {
  for (int i = 0; i < input.length ~/ 2; i++) {
    if (input[i] != input[input.length - i - 1]) return false;
    return true;
  }
}

bool palindrome2(String input) {
  return input == input.split('').reversed.join();
}

String reverse(String input) {
  return "One line only !!!";
}
