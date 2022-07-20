// --- Directions
// 1) Create a node class.  The constructor
// should accept an argument that gets assigned
// to the data property and initialize an
// empty array for storing children. The node
// class should have methods 'add' and 'remove'.
// 2) Create a tree class. The tree constructor
// should initialize a 'root' property to null.
// 3) Implement 'traverseBF' and 'traverseDF'
// on the tree class.  Each method should accept a
// function that gets called with each element in the tree

class Node {
  dynamic data;
  List<Node> children = [];
  Node(this.data);
  void add(dynamic child) {
    children.add(Node(child));
  }

  void remove(dynamic child) {
    for (var i = 0; i < children.length; i++) {
      if (children[i].data == child) {
        children.removeAt(i);
      }
    }
  }
}

class Tree {
  Node? root;

  _traverseBF(Node baseNode, Function(Node) fn) {
    baseNode = root ?? Node(-99);
    List<Node> listNode = [];
    listNode.add(baseNode);
    var index = 0;
    while (true) {
      Node currentNode = listNode[index];
      int numberOfChild = currentNode.children.length;
      for (var i = 0; i < numberOfChild; i++) {
        listNode.add(currentNode.children[i]);
      }
      index++;
      if (index > listNode.length - 1) break;
    }
    for (Node node in listNode) fn(node);
  }

  _traverseDF(Node baseNode, Function(Node) fn) {
    baseNode = root ?? Node(-99);
    List<Node> listNodeTmp = [];
    List<Node> listNodeStack = [];
    List<Node> storeNodeTraversed = [];
    listNodeTmp.add(baseNode);

    while (true) {
      Node currentNode = listNodeTmp.elementAt(listNodeTmp.length - 1);
      int numberOfChild = currentNode.children.length;

      if (storeNodeTraversed.contains(currentNode)) {
        listNodeStack.add(currentNode);
        listNodeTmp.removeLast();
        if (listNodeTmp.length == 0)
          break;
        else
          continue;
      } else {
        for (var i = 0; i < numberOfChild; i++) {
          listNodeTmp.add(currentNode.children[i]);
        }
        storeNodeTraversed.add(currentNode);
      }
    }
    var resultList = listNodeStack.reversed;
    for (Node node in resultList) fn(node);
  }

  traverseBreadthFirst(Function(Node) fn) {
    _traverseBF(root ?? Node(-99), fn);
  }

  traverseDepthFirst(Function(Node) fn) {
    _traverseDF(root ?? Node(-99), fn);
  }
}
