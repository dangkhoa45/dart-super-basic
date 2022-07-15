// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

String maxChar(String input) {
  int charCount = -1;
  int maxCount = 0;
  var counts = <int, int>{};
  for (var char in input.runes) {
    int count = counts.update((char), (n) => n + 1, ifAbsent: () => 1);
    if (count > maxCount) {
      maxCount = count;
      charCount = char;
    }
  }
  return String.fromCharCode(charCount);
}
