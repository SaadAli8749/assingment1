import 'dart:io';

void main() {
  stdout.write('Enter a string: ');
  String input = stdin.readLineSync()!.toLowerCase();

  bool isPalindrome = true;

  for (int i = 0; i < input.length / 2; i++) {
    if (input[i] != input[input.length - i - 1]) {
      isPalindrome = false;
      break;
    }
  }

  if (isPalindrome) {
    print('$input is a palindrome');
  } else {
    print('$input is not a palindrome');
  }
}
