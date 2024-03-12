import 'dart:math';

void main() {
  Random rd = new Random();
  int n = rd.nextInt(104) + 1;
  List<String> res = [];
  for (int i = 1; i < n + 1; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      res.add('Fizz Buzz');
    } else if (i % 3 == 0) {
      res.add('Fizz');
    } else if (i % 5 == 0) {
      res.add('Buzz');
    } else {
      res.add(i.toString());
    }
  }

  print(res);
}
