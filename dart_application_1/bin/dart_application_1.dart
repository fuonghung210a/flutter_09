import 'dart:ffi';

void main(List<String> args) {
  String str =
      " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";

  /// hãy viết code bằng tất cả các cách có thể để in ra:
  /// `Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)`
  List<String> arr = str.trim().split(" ");
  arr[0].replaceAll("đ", "Đ");

  for (String str in arr) {
    print(str);
  }
}
