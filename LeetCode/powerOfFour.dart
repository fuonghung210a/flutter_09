import 'dart:math';

void main() {
  int n = 1;
  int curr = 0;
  bool res = false;
  for (int i = 0; curr <= n; i++) {
    curr = pow(4, i).toInt();
    if (curr == n) {
      res = true;
      break;
    }
  }
  print(res);
}
