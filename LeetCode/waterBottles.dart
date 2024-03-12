class Solution {
  int numWaterBottles(int numBottles, int numExchange) {
    int res = numBottles;
    while (numBottles >= numExchange) {
      res += numBottles ~/ numExchange;
      numBottles = numBottles ~/ numExchange + (numBottles % numExchange);
    } //while

    return res;
  } //func
}//solut