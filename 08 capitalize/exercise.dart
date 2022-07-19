// --- Directions
// Write a function that accepts a string.  The function should
// capitalize the first letter of each word in the string then
// return the capitalized string.
// --- Examples
//   capitalize('a short sentence') --> 'A Short Sentence'
//   capitalize('a lazy fox') --> 'A Lazy Fox'
//   capitalize('look, it is working!') --> 'Look, It Is Working!'

String capitalize(String input) {
  List<String> list = input.split(" ");
  List<String> newList = [];
  list.forEach((element) {
    final newList1 = element.split('');
    String upperCase = newList1[0].toUpperCase();
    newList1[0] = upperCase;
    newList.add(newList1.join());
  });
  return newList.join(' ');
}
