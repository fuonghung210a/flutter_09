void main(List<String> args) {
  String? sCanBeNull = null;
  List<String> splitteds_3 = sCanBeNull?.split("") ?? ["1", "2"];

  /// ở đây, sẽ thực thi như sau:
  /// Nếu `sCanBeNull` != null sẽ gọi hàm split("") và trả về giá trị
  /// Nếu `sCanBeNull` == null sẽ trả về giá trị []
  /// 1 vài ví dụ về `Null-aware`
  // sCanBeNull ??= "Value"; // nếu sCanBeNull = null, sCanBeNull = "Value"
  // sCanBeNull ??=
  //     "Test"; // sCanBeNull sẽ không được cập nhật, vì giá trị hiện tại = "Value"
  print("sCanBeNull -> $splitteds_3");
}
