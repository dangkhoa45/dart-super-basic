// --- Description
// Create a queue data structure.  The queue
// should be a class with methods 'add' and 'remove'.
// Adding to the queue should store an element until
// it is removed
// --- Examples
//     const q = new Queue();
//     q.add(1);
//     q.remove(); // returns 1;

class Queue {
  final List<int> list = [];

  Queue();

  void add(int value) {
    this.list.add(value);
  }

  int? remove() {
    int? result;
    if (this.list.length > 0) {
      result = this.list.elementAt(0);
      this.list.removeAt(0);
    }
    return result;
  }
}
