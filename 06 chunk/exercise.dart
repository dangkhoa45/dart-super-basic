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
  List<List<int>> chuckArray = [];
  int sizeOfSubArray = int.parse(size.toString());

  int loop = (array.length / sizeOfSubArray)
      .ceil(); // ceil: trả về số nguyên gần nhất, <= 1 số.

  for (var i = 1; i <= loop; i++) {
    int start = (i - 1) * sizeOfSubArray;
    int end = sizeOfSubArray * i;
    if (end > array.length) end = array.length;
    chuckArray.add(array.sublist(start, end));
  }

  return chuckArray;
}
