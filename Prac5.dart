void main() {
  List<int> arr = []; // innitial empty list
  for (int i = 0; i <= 100; i++) {
    arr.add(i); //add 0 to 100 to list
  }
  print("------------Even numbers: ---------------");
  for (int i in arr) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  print("-----------Odd numbers: ------------------");
  for (int i in arr) {
    if (i % 2 == 1) {
      print(i);
    }
  }
  oddOrEven(0); // It's an even number
}

void oddOrEven(int num) {
  if (num % 2 == 0) {
    print("It's an even number");
  } else {
    print("It's an odd number");
  }
}
