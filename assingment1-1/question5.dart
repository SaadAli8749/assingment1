import 'dart:io';

void main() {
  stdout.write("Enter the temperature in Celsius: ");
  double celsius = double.parse(stdin.readLineSync()!);
  double fahrenheit = (9 / 5) * celsius + 32;
  print("$celsius degree Celsius is equal to $fahrenheit degree Fahrenheit.");
}
