import 'dart:io';

void main() {
  print('Enter the base of the triangle:');
  double base = double.parse(stdin.readLineSync()!);

  print('Enter the height of the triangle:');
  double height = double.parse(stdin.readLineSync()!);

  double area = (base * height) / 2;

  print('The area of the triangle is: $area');
}
