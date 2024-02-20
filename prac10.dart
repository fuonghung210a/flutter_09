void main() {
  verticalPrint();
  horizontalPrint();
}

void horizontalPrint() {
  print('--- 1 --- 2 --- 3 --- 4 --- 5 --- 6 --- 7 --- 8 --- 9 ---');
  for (int j = 1; j <= 9; j++) {
    String line = '';
    for (int i = 1; i <= 9; i++) {
      line += '$i x $j = ${i * j} | ';
    }
    print(line);
  }
  print('-------------------------------------------------------');
  String sum = '';
  for (int i = 1; i <= 9; i++) {
    sum += '------- ${i * 45} ------- | ';
  }
  print(sum);
}

void verticalPrint() {
  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 9; j++) {
      print("$i * $j = ${i * j}");
    }
    print("\n\n");
  } //in theo chieu doc
}
