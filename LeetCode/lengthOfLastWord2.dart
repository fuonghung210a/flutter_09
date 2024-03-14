void main() {
  String s = "   modasdasdsadson   ";

  print(Solution().lengthOfLastWord(s));
}

class Solution {
  int lengthOfLastWord(String s) {
    int index = s.length - 1;
    while (s[index] == " ") {
      index--;
    }
    int count = 0;
    while (s[index] != " ") {
      count++;
      if (index == 0 || s[index] == " ") {
        break;
      }
      index--;
    }
    return count;
  }
}
