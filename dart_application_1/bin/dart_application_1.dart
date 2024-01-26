/// hãy viết code bằng tất cả các cách có thể để in ra:
/// `Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (ph ần 1)`
/// gợi ý: sử dụng hàm subString()
void main(List<String> arguments) {
  String string =
      ' đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...';

  String result = string
      .trim()
      .vietHoaChuCaiDau()
      .replaceFirst('của ', '')
      .replaceFirst('dart', 'DART')
      .replaceFirst('dart basics', 'DART BASICS')
      .replaceAll('...', '');
  print(result);
  result.replaceAll("");
  result.replaceFirst(from, to);
}

extension StringExtension on String {
  String vietHoaChuCaiDau() {
    if (isEmpty) {
      return this;
    } else {
      return this[0].toUpperCase() +
          substring(1)
              .toLowerCase(); //viết hoa phần tử đầu, còn lại viết thường hết
    }
  } /*  */
}
