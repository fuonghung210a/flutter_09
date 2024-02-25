import 'package:flutter/material.dart';

class Numb {
  int num;
  Numb(this.num);
}

void main() {
  Numb num = Numb(0);

  // Thêm widget Button
  var button = TextButton(
    onPressed: () => buttonCount(num),
    child: new Text('Nhấn nút'),
  );
}

void buttonCount(Numb num) {
  num.num++;
  print(num.num);
}
