void main() {
  String s = '''Hello world!''';

  String s1 = 'Đây là đoạn văn được viết bằng tiếng việt';

  String s2 = 'This is a sentence written in English';
  List<String> str = s2.split(" ");

  print(str.contains("This"));
  print("s2.toUpperCase() : ${s2.toLowerCase()}");
  print("Index of \'Sentence'\ is: ${str.lastIndexOf("sentence")}");
}
