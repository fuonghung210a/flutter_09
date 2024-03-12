class Solution {
  int countDigits(int num) {
    int x = num;
    int res = 0;
    while (num >= 1) {
    if (x % (num % 10) == 0) {
      res++;
    }
    num = num ~/ 10;
    }
    return res;
  }
}
