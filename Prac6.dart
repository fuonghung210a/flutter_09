import 'dart:math';
import 'dart:io';

void main() {
  int n = 2000; //change your desired number here
  List<int> lst = [];
  for (int i = 0; i < n; i++) {
    if (isPrime(i)) {
      lst.add(i);
    }
  }
  print(lst);
}

bool isPrime(int num) {
  if (num < 2) {
    return false; //<=1 is not prime
  }
  if (num == 2 || num == 3) {
    return true;
  }
  if (num % 2 == 0) {
    return false;
  }
  // int sqrtNum = sqrt(num).toInt();
  for (int i = 3; i * i <= num; i += 2) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
