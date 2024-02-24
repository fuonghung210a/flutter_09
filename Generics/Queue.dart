class Queue<T> {
  List<T> list = [];
  bool isEmpty() {
    return list.isEmpty;
  }

  void enqueue(T value) {
    list.add(value);
  }

  T dequeue() {
    if (isEmpty()) {
      throw Exception('Queue is empty');
    }
    T x = list.first;
    list.removeAt(0);
    return x;
  }

  @override
  String toString() {
    return list.toString();
  }
}

void main() {
  Queue q = Queue();
  q.enqueue('TechMaster');
  q.enqueue('Hoc');
  q.enqueue('La');
  q.enqueue('Co');
  q.enqueue('Viec!');
  print(q.toString());
}
