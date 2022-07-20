// --- Directions
// --- Directions
// Given a node, validate the binary search tree,
// ensuring that every node's left hand child is
// less than the parent node's value, and that
// every node's right hand child is greater than
// the parent

import 'node.dart';

_traverseBottomUp(Node node) {
  Node? parent = node.parent;
  Node currentNode = node;
  while (parent != null) {
    bool isRight = true;
    // check node in right or left sida of parent
    if (currentNode.data < parent.data) {
      isRight = false;
    }
    //When node in right side of parent, is must greater than parent
    if (isRight) {
      if (node.data < parent.data) {
        return false;
      }
    }
    // elif node in left side of parent, it must less than parent
    else {
      if (node.data > parent.data) {
        return false;
      }
    }
    currentNode = currentNode.parent!;
    parent = parent.parent;
  }
  return true;
}

bool validate(Node node) {
  List<Node> queue = [node];
  List<Node> nodeTraversed = [];
  while (true) {
    if (queue.isEmpty) break;
    Node currentNode = queue[0];
    queue.removeAt(0);
    nodeTraversed.add(currentNode);

    // check left child
    if (currentNode.left != null) {
      if (currentNode.left!.data > currentNode.data) {
        return false;
      } else {
        //Set parent for node
        currentNode.left!.parent = currentNode;
        queue.add(currentNode.left!);
      }
    }

    // check right child
    if (currentNode.right != null) {
      if (currentNode.right!.data < currentNode.data) {
        return false;
      } else {
        //set parent for node
        currentNode.right!.parent = currentNode;
        queue.add(currentNode.right!);
      }
    }
  }
  var traverListNode = nodeTraversed.reversed;
  for (Node node in traverListNode) {
    if (!_traverseBottomUp(node)) {
      return false;
    }
  }
  return true;
}

bool isSorted(List<int> sequence) {
  for (var i = 1; i < sequence.length; i++) {
    if (sequence[i] < sequence[i - 1]) return false;
  }
  return true;
}
