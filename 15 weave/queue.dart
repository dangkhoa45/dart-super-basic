// --- Directions
// Implement a 'peek' method in this Queue class.
// Peek should return the last element (the next
// one to be returned) from the queue *without*
// removing it.

class Queue {
  final List<dynamic> list = [];

  Queue();

  void add(var value) {
    this.list.add(value);
  }

  dynamic peek() {
    dynamic result;
    return (this.list.length > 0) ? result = this.list.elementAt(0) : result;
  }

  dynamic remove() {
    dynamic result;
    if (this.list.length > 0) {
      result = this.list.elementAt(0);
      this.list.removeAt(0);
    }
    return result;
  }

  int length() {
    return this.list.length;
  }
}
