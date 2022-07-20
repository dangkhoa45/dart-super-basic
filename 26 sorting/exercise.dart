// --- Directions
// Implement bubbleSort, selectionSort, and mergeSort

List<int> bubbleSort(List<int> arr) {
  for (var i = 1; i < arr.length; i++) {
    for (var j = 0; j < i; j++) {
      if (arr[j] > arr[i]) {
        //Swap
        var temp = arr[j];
        arr[j] = arr[i];
        arr[i] = temp;
      }
    }
  }
  return arr;
}

List<int> selectionSort(List<int> arr) {
  for (var i = 0; i < arr.length; i++) {
    int min = arr[i];
    int index = i;
    for (var j = i + 1; j < arr.length; j++) {
      if (arr[j] < min) {
        min = arr[j];
        index = j;
      }
    }
    //Swap
    var temp = arr[i];
    arr[i] = arr[index];
    arr[index] = temp;
  }
  return arr;
}

List<int> mergeSort(List<int> arr) {
  var left = 0;
  var right = arr.length - 1;
  var mid = (left + right) ~/ 2;
  if (arr.length == 1) return arr;
  var leftArr = arr.getRange(left, mid + 1);
  var rightArr = arr.getRange(mid + 1, right + 1);
  return merge(mergeSort(leftArr.toList()), mergeSort(rightArr.toList()));
}

List<int> merge(List<int> left, List<int> right) {
  var lengthLeft = left.length;
  var lengthRight = right.length;
  var indexLeft = 0;
  var indexRight = 0;

  List<int> mix = [];
  while ((indexLeft < lengthLeft) && (indexRight < lengthRight)) {
    if (left[indexLeft] < right[indexRight]) {
      mix.add(left[indexLeft]);
      ++indexLeft;
    } else {
      mix.add(right[indexRight]);
      ++indexRight;
    }
  }

  while (indexLeft < lengthLeft) {
    mix.add(left[indexLeft]);
    indexLeft++;
  }

  while (indexRight < lengthRight) {
    mix.add(right[indexRight]);
    indexRight++;
  }
  return mix;
}
