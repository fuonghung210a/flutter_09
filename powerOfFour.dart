// class Solution {
//   bool isPowerOfFour(int n) {
//     if (n <= 0) {
//       return false;
//     }
//     if (n == 1) {
//       return true;
//     }
//     int res = (log(n) / log(4)).toInt();
//     if (pow(4, res) == n) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// }
