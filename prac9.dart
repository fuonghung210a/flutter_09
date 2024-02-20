import 'dart:math';

void main() {
  int n = 20;
  List<int> list = [], minList = [], maxList = [];
  for (int i = 0; i < n; i++) {
    list.add((Random().nextInt(100) + 50));
  }
  list.sort((a, b) => a - b); //sap xep tang dan
  minList = list.take(3).toList(); //lay ra 3 phan tu nho nhat
  maxList = list
      .where((e) => e >= list[n - 3])
      .take(3)
      .toList(); //lay ra 3 phan tu lon nhat
  print("3 phan tu nho nhat: ${minList}\n3 phan tu lon nhat: ${maxList}");
  findTop3(list);
}

void findTop3(List<int> arr) {
  int max1 = arr[0], max2 = arr[1], max3 = arr[2];
  int min1 = arr[0], min2 = arr[1], min3 = arr[2];
  for (int it in arr) {
    var curr = it;
    // Update maximum values
    if (max3 < curr) {
      max1 = max2;
      max2 = max3;
      max3 = curr;
    } else if (max2 < curr) {
      max1 = max2;
      max2 = curr;
    } else if (max1 < curr) {
      max1 = curr;
    }

    // Update minimum values
    if (min3 > curr) {
      min1 = min2;
      min2 = min3;
      min3 = curr;
    } else if (min2 > curr) {
      min1 = min2;
      min2 = curr;
    } else if (min1 > curr) {
      min1 = curr;
    }
  }
  print("Max: ${max1}, ${max2},${max3}\nMin: ${min1}, ${min2}, ${min3}");
}
