class Queue {
  final int capacity;
  final List<String> list = <String>[];
  Queue(this.capacity);
  bool isFull() {
    return list.length == capacity;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  dequeue() {
    if (isEmpty()) {
      throw Exception("Queue is empty!");
    } else {
      var x = list[0];
      list.removeAt(0);
      return x;
    }
  }

  void enqueue(String val) {
    if (isFull()) {
      throw Exception("Queue is full!");
    } else {
      list.add(val);
    }
  }
}

void main() {
  Queue q = new Queue(2);
  q.enqueue('Character');
  q.enqueue("String");
  var x = q.dequeue();
  print(x);
  x = q.dequeue();
  print(x);
}
