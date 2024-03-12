void main() {
  int input = 10232;

  int res = 0;
  while (input >= 1) {
    res += input % 10;
    input = input ~/ 10;
  }
  print(res);
}
