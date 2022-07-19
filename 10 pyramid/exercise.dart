// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a pyramid shape
// with N levels using the # character.  Make sure the
// pyramid has spaces on both the left *and* right hand sides
// --- Examples
//   pyramid(1)
//       '#'
//   pyramid(2)
//       ' # '      < 2 | > 2
//       '###'      < 1 | > 3
//   pyramid(3)
//       '  #  '    < 3  | > 3
//       ' ### '    < 2  | > 4
//       '#####'    < 1  | > 5

import 'dart:math';

void pyramid(int lineCount, {Function(String)? printForUnitTest}) {
  for (var i = 1; i <= lineCount; i++) {
    printForUnitTest!(pyramidLine(i, lineCount));
  }
}

String pyramidLine(int level, int height) {
  String result = '';

  int lengthOfLastLevel = height * 2 - 1;
  //Add hashtag

  int lengthOfHashTag = level * 2 - 1;
  for (var i = 1; i <= lengthOfHashTag; i++) result += '#';

  int numberOfSpace = lengthOfLastLevel - result.length;

  //Add space for each side
  int lenghtLeft = (numberOfSpace ~/ 2) + lengthOfHashTag;
  int lenghtRight = numberOfSpace + lengthOfHashTag;

  result = result.padLeft(lenghtLeft);
  result = result.padRight(lenghtRight);
  return result;
}
