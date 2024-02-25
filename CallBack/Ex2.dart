import 'dart:io';

textField(String text, {Function(String)? onChanged}) {
  if (onChanged != null) {
    final result = 'Hello: $text';
    print(result);
    print('Enter text (type "exit" to stop): ');
    while (true) {
      String? input = stdin.readLineSync();
      if (input == null || input.toLowerCase() == 'exit') {
        break;
      }
      onChanged(input);
    }
  }
}

void main() {
  textField('Hiiiii', onChanged: (newValue) {
    print('You have just pressed: $newValue');
  });
}
