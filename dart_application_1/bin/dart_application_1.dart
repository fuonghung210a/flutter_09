void main(List<String> args) {
  int a = 10;
  try {
    a = int.parse("Hello world");

    /// khi parse int sẽ gây ra lỗi, nhưng được bọc bởi try catch
    /// nên sẽ không thể print ra biến a
    print("after parse, a = $a");
  } on FormatException {
    print("Format exception"); // exception -> FormatException: Hello world
  } finally {
    print("Task failed sucessfully");
  }
}
