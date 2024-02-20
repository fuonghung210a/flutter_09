class Stack {
  final int capacity;
  final List<String> list = <String>[];
  Stack(this.capacity);
  bool isEmpty() {
    return list.isEmpty;
  }

  bool isFull() {
    return list.length == capacity;
  }

  void push(String val) {
    if (isFull()) {
      throw Exception("Stack overflow");
    } else {
      list.add(val);
    }
  }

  String pop() {
    if (isEmpty()) {
      throw Exception("Stack is empty");
    } else {
      String x = list[list.length - 1];
      list.removeAt(list.length - 1);
      return x;
    }
  }
}

void main() {
  Stack s = new Stack(3);
  s.push("Stack");
  s.push("Queue");
  s.push("Bag");
  print(s.pop());
  print(s.pop());
  print(s.pop());
}
