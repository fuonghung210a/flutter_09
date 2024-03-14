void main() {
  String s = "ab#c";
  String t = "ad#dc";
  print(Solution().backspaceCompare(s, t));
}

class Solution {
  bool backspaceCompare(String s, String t) {
    String resS = "", resT = "";
    for (int i = 0; i < s.length; i++) {
      if (s[i] != "#") {
        resS += s[i];
      } else if (s[i] == "#" && resS.length > 0) {
        resS = resS.substring(0, resS.length - 1);
      }
    }
    for (int i = 0; i < t.length; i++) {
      if (t[i] != "#") {
        resT += t[i];
      } else if (t[i] == "#" && resT.length > 0) {
        resT = resT.substring(0, resT.length - 1);
      }
    }
    return resS == resT;
  }
}
