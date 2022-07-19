// --- Directions
// Implement a Queue datastructure using two stacks.
// *Do not* create an array inside of the 'Queue' class.
// Queue should implement the methods 'add', 'remove', and 'peek'.
// For a reminder on what each method does, look back
// at the Queue exercise.
// --- Examples
//     const q = new Queue();
//     q.add(1);
//     q.add(2);
//     q.peek();  // returns 1
//     q.remove(); // returns 1
//     q.remove(); // returns 2

import 'stack.dart';

class Queue {
  Stack st1 = Stack();
  Stack st2 = Stack();
  Queue();

  void add(var value) {
    this.st1.push(value);
  }

  dynamic peek() {
    while (this.st1.peek() != null) {
      st2.push(this.st1.pop());
    }

    dynamic result = st2.peek();

    while (st2.peek() != null) {
      this.st1.push(st2.pop());
    }
    return result;
  }

  dynamic remove() {
    while (this.st1.peek() != null) {
      st2.push(this.st1.pop());
    }
    dynamic result = st2.pop();
    while (st2.peek() != null) {
      this.st1.push(st2.pop());
    }
    return result;
  }
}
