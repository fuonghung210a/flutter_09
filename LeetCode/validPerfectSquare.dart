import 'dart:math';

void main() {
  int n = 100;
  bool res = false;
  // n = rd.nextInt(100);

  for (int i = 0; i < n; i++) {
    if (n == i * i) {
      res = true;
    }
  }
  print(n);
  print(res);

  // cach 2
  res = false;

  int a = sqrt(n).toInt();
  if (a * a == n) {
    res = true;
  }

  print(res);
}
