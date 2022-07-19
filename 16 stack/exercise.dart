// --- Directions
// Create a stack data structure.  The stack
// should be a class with methods 'push', 'pop', and
// 'peek'.  Adding an element to the stack should
// store it until it is removed.
// --- Examples
//   const s = new Stack();
//   s.push(1);
//   s.push(2);
//   s.pop(); // returns 2
//   s.pop(); // returns 1

class Stack {
  late List<dynamic> list;
  Stack({List<dynamic>? listInput}) {
    (listInput != null) ? this.list = listInput : this.list = [];
  }

  void push(dynamic value) {
    this.list.add(value);
  }

  dynamic pop() {
    dynamic result;
    int lengthOfList = this.list.length;

    if (lengthOfList > 0) {
      result = this.list.elementAt(lengthOfList - 1);
      this.list.removeLast();
    }
    return result;
  }

  dynamic peek() {
    dynamic result;
    int lengthOfList = this.list.length;
    return (lengthOfList > 0) ? this.list.elementAt(lengthOfList - 1) : result;
  }
}
