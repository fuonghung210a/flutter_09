class Solution {
  String largestOddNumber(String num) {
    String subStr = "";
    for (int i = num.length - 1; i >= 0; i--) {
      if (int.parse(num[i]) % 2 != 0) {
        subStr = num.substring(0, i + 1);
        return subStr;
      }
    }
    return subStr;
  }
}
