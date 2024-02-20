import 'dart:developer';
import 'dart:math';

void main() {
  int n = 50;
  List<int> arr = [];
  for (int i = 0; i < n; i++) {
    arr.add(Random().nextInt(100));
  }
  print(arr);
  int sum = arr.reduce((value, element) => value + element); //tinh sum cua arr
  print(
      "Trung binh cua arr: ${(sum / arr.length).toDouble()}"); // in ra trung binh
  int min = arr.reduce((value, element) =>
      value >= element ? element : value); //tim min dung ham reduce
  int max = arr.reduce((value, element) =>
      value <= element ? element : value); //tinh max dung ham reduce
  print("min cua arr: $min \nmax cua arr: $max");
  List<int> k = List<int>.filled(max + 1, 0); //mang danh dau
  List<bool> printed =
      List<bool>.filled(max + 1, false); //mang kiem tra xem da in chua
  arr.sort();
  for (int i = 0; i < n; i++) {
    k[arr[i]]++;
  }
  for (int i = 0; i < n; i++) {
    if (i != 0 && !printed[arr[i]]) {
      print("${arr[i]}: ${k[arr[i]]}");
      printed[arr[i]] = true;
    }
  }
  print("_______________________________________________________");
  int even = 0;
  for (int i = 0; i < n; i++) {
    if (oddOrEven(arr[i])) {
      even++;
    }
  }
  print("$even phan tu chan, ${n - even} phan tu le");
}

bool oddOrEven(int num) {
  if (num % 2 == 0) {
    return true;
  } else {
    return false;
  }
}
