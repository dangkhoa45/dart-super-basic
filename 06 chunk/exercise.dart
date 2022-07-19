// --- Directions
// Given an array and chunk size, divide the array into many subarrays
// where each subarray is of length size
// --- Examples
// chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
// chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
// chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
// chunk([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
// chunk([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]

List<List<int>> chunk(List<int> array, size) {
  List<List<int>> newArray = [];
  int originalSize = size;
  for (var i = 0; i < array.length; i += originalSize) {
    if ((i + originalSize) > array.length) {
      List<int> rArray = array.sublist(i, array.length);
      newArray.add(rArray);
      break;
    }
    List<int> resultList = array.sublist(i, i + originalSize);
    newArray.add(resultList);
  }
  return newArray;
}
