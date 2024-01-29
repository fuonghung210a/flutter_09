import 'dart:ffi';

void main() {
  void workingWithString() {
    String s = '''Hello world!''';

    String s1 = 'Đây là đoạn văn được viết bằng tiếng việt';

    String s2 = 'This is a sentence written in English';
    List<String> str = s2.split(" ");

    print(s2.replaceAll(
        'i', 'Replace')); //rrturn a string without changing the source
    print(s);
  }

  ;
  testArray();
}

void testArray() {
  List strs = [
    "a",
    "b",
    "c",
    10,
    20,
    -1,
    1.0,
    true,
    false,
  ];
  List<String> strs_1 = <String>["a", "adas", "d"];

  List<String> subList = strs_1.sublist(0);
  print(subList);
}

void workingWithDouble() {
  double? a = double.tryParse("99.a");
  print(a);
}

void workingWithInteger() {
  int a = -21;
  int b = 221;

  print(a + b);
}
// 