void main() {
  final phones = <String>['Nokia', 'Xiaomi', 'iPhone'];

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
  phones[1] = phones[1] + phones[2];
  phones[2] = phones[1].replaceAll(phones[2], "");
  phones[1] = phones[1].replaceAll(phones[2], "");

  print(phones);
  print(
      '${identityHashCode(phones[0])} - ${identityHashCode(phones[1])} - ${identityHashCode(phones[2])}');
}
