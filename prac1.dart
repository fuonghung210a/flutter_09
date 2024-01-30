void main(List<String> args) {
  String str =
      " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";
  String s1 = str.substring(1, str.length - 3);
  s1 = Capitalize(s1);
  s1 = s1
      .replaceFirst("dart", "Dart")
      .replaceFirst('dart basics', 'DART BASIC')
      .replaceFirst(' của', '');
  print(s1);

  /// hãy viết code bằng tất cả các cách có thể để in ra:
  /// `Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)`
  /// gợi ý: sử dụng hàm subString()
}

String Capitalize(String st) {
  if (st.isEmpty) {
    return "";
  } else
    return st[0].toUpperCase() + st.substring(1);
}
