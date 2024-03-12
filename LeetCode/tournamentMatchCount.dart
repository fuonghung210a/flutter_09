void main() {
  int n = 7; //thay doi test case o day
  int res = 0;
  while (n > 1) {
    res += n ~/ 2;
    n -= n ~/ 2;
  }
  print(res);
}
