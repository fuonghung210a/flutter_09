class Solution {
  int numJewelsInStones(String jewels, String stones) {
    int res = 0;
    // for (int i = 0; i < stones.length; i++) {
    //   if (jewels.contains(stones[i])) {
    //     res++;
    //   }
    // }

    for (int i = 0; i < stones.length; i++) {
      for (int j = 0; j < jewels.length; j++) {
        if (stones[i] == jewels[j]) {
          res++;
        }
      }
    }
    return res;
  }
}

void main() {
  String jewels = "a";
  String stones = "adcsa";
  print(Solution().numJewelsInStones(jewels, stones));
}
