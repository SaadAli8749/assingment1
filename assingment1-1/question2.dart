import 'dart:io';

void main() {
  print('Enter the first number:');
  double firstNumber = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double secondNumber = double.parse(stdin.readLineSync()!);

  double average = (firstNumber + secondNumber) / 2;

  print(
      'The average of $firstNumber and $secondNumber is: ${average.toStringAsFixed(2)}');
}
