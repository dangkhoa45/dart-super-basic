// --- Directions
// Check to see if two provided strings are anagrams of eachother.
// One string is an anagram of another if it uses the same characters
// in the same quantity. Only consider characters, not spaces
// or punctuation.  Consider capital letters to be the same as lower case
// --- Examples
//   anagrams('rail safety', 'fairy tales') --> True
//   anagrams('RAIL! SAFETY!', 'fairy tales') --> True
//   anagrams('Hi there', 'Bye there') --> False

bool anagrams(String stringA, String stringB) {
  var newStringA = filter(sortCharsInString(stringA).trim());
  var newStringB = filter(sortCharsInString(stringB).trim());
  return newStringA == newStringB;
}

RegExp regExp = new RegExp(r"\w+"); // kiểm tra kí tự trong mảng

String filter(String input) {
  return regExp.stringMatch(input)!;
}

String sortCharsInString(String input) {
  var arrayString = input.toLowerCase().split('');
  arrayString.sort();
  return arrayString.join();
}
