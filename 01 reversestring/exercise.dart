String reverse(String input) {
  return input.split("").reversed.join("");
}

String reverse2(String input) {
  input = String.fromCharCodes(input.codeUnits.reversed);
  return input;
}

String reverse3(String input) {
  String tmp = "";
  for (int i = input.length - 1; i >= 0; i--) {
    tmp += input[i];
  }
  return tmp;
}
