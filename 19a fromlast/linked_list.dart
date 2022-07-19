// --- Directions
// Implement classes Node and Linked Lists
// See 'directions' document
// --- Directions
// Implement classes Node and Linked Lists
// See 'directions' document
class Node {
  dynamic data;
  Node? next;

  Node(this.data, [this.next = null]);
}

class LinkedList extends Iterable {
  Node? head;
  int sizeOfList = 0;

  void insertFirst(dynamic data) {
    Node newNode = Node(data, this.head);
    this.head = newNode;
    this.sizeOfList++;
  }

  void insertLast(dynamic data) {
    Node newNode = Node(data, null);
    if (this.head == null) {
      this.head = newNode;
    } else {
      Node? moveNode = this.head;
      while (moveNode?.next != null) {
        moveNode = moveNode?.next;
      }

      moveNode?.next = newNode;
    }
    this.sizeOfList++;
  }

  int size() {
    return this.sizeOfList;
  }

  Node? getFirst() {
    return this.head;
  }

  Node? getAt(int index) {
    if (index + 1 > this.sizeOfList) {
      return null;
    } else {
      Node? moveNode = this.head;
      int movePosition = 0;
      while (movePosition < index) {
        moveNode = moveNode?.next;
        movePosition++;
      }
      return moveNode;
    }
  }

  void removeFirst() {
    if (this.head != null) {
      this.head = this.head?.next;
      this.sizeOfList--;
    }
  }

  Node? getLast() {
    Node? moveNode = this.head;
    while (moveNode?.next != null) {
      moveNode = moveNode?.next;
    }
    return moveNode;
  }

  void removeAt(index) {
    if (index + 1 <= this.sizeOfList) {
      print(index);
      Node? moveNode = this.head;
      int movePosition = 0;
      while (movePosition < index - 1) {
        moveNode = moveNode?.next;
        movePosition++;
      }
      (movePosition == 0)
          ? removeFirst()
          : moveNode?.next = moveNode.next?.next;
      this.sizeOfList--;
    }
  }

  void insertAt(int data, int index) {
    Node newNode = Node(data);
    if (index < 0) {
    } else if (index >= sizeOfList) {
      insertLast(data);
    } else {
      Node? moveNode = this.head;
      int movePosition = 0;
      while (movePosition < index - 1) {
        moveNode = moveNode?.next;
        movePosition++;
      }
      if (movePosition == 0) {
        insertFirst(data);
      } else {
        newNode.next = moveNode?.next;
        moveNode?.next = newNode;
      }
      this.sizeOfList++;
    }
  }

  void removeLast() {
    if (this.sizeOfList <= 0) {
    } else if (this.sizeOfList == 1) {
      removeFirst();
    } else {
      Node? moveNode = this.head;
      while (moveNode?.next?.next != null) {
        moveNode = moveNode?.next;
      }
      moveNode?.next = null;
      this.sizeOfList--;
    }
  }

  void clear() {
    this.head = Node(null);
    this.sizeOfList = 0;
  }

  forEach(Function(Node node) fn) {
    Node? nextNode = head;
    while (nextNode != null) {
      fn(nextNode);
    }
  }

  @override
  Iterator get iterator => LinkedListIterator(this);
}

class LinkedListIterator implements Iterator {
  LinkedList linkedList;
  Node? _current;
  Node? _next;

  LinkedListIterator(this.linkedList) {
    this._current = this.linkedList.head;
  }

  @override
  Node? get current {
    _next = _current;
    _current = _current?.next;
    return _next;
  }

  @override
  bool moveNext() {
    return (this._current != null) ? true : false;
  }
}
