void main() {
  int n = 17;
  int x = n;
  int res = 0;
  while (n >= 1) {
    if (x % (n % 10) == 0) {
      res++;
    }
    n = n ~/ 10;
  }
  print(res);
}
