import 'dart:io';

void main() {
  print("Enter a number:");
  String input = stdin.readLineSync()!;

  // Handle potential parsing errors
  try {
    int number = int.parse(input);
    // Use the number here
    print("You entered: $number");
  } on FormatException catch (e) {
    print("Invalid input: $e");
  }
}
