import 'dart:math';

void main() {
  int n = 231;
  int curr = 0;
  int res = (log(n) / log(4)).toInt();
  if (pow(4, res) == n) {
    print(true);
  } else {
    print(false);
  }
}
