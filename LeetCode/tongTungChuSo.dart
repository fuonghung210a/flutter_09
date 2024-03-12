void main() {
  int input = 10232;

  int res = 0;
  while (input > 10) {
    res += input % 10;
    input = input ~/ 10;
  }
  print(res);
}
