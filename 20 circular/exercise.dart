// --- Directions
// Given a linked list, return true if the list
// is circular, false if it is not.
// --- Examples
//   const l = new List();
//   const a = new Node('a');
//   const b = new Node('b');
//   const c = new Node('c');
//   l.head = a;
//   a.next = b;
//   b.next = c;
//   c.next = b;
//   circular(l) // true

import 'linked_list.dart';

bool circular(LinkedList list) {
  Node moveNode = list.head ?? Node(-1);
  List<Node> listNode = [];
  while (true) {
    if (listNode.contains(moveNode)) {
      return true;
    } else {
      listNode.add(moveNode);
      if (moveNode.next != null) {
        moveNode = moveNode.next!;
      } else {
        break;
      }
    }
  }
  return false;
}
