import 'dart:math';

void main() {
  final numbers = List.generate(10, (index) {
    final random = Random();
    return random.nextInt(50) + 100;
  });
  sorting(numbers);
  print(numbers);
  numbers.sort((a, b) => a > b ? a : b);
  print(numbers);
}

void sorting(List lst) {
  int n = lst.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      if (lst[i] > lst[j]) {
        var temp = lst[i];
        lst[i] = lst[j];
        lst[j] = temp;
      }
    }
  }
}
