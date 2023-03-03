import 'dart:io';

void main() {
  print("Enter the base: ");
  var base = int.parse(stdin.readLineSync()!);

  print("Enter the exponent: ");
  var exponent = int.parse(stdin.readLineSync()!);

  var result = 1;
  for (var i = 0; i < exponent; i++) {
    result *= base;
  }

  print("$base raised to the power of $exponent is $result");
}
