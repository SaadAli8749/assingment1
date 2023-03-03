import 'dart:io';
import 'dart:math';

void main() {
  print('Enter the radius of the sphere:');
  double radius = double.parse(stdin.readLineSync()!);

  double volume = (4 / 3) * pi * pow(radius, 3);
  double surfaceArea = 4 * pi * pow(radius, 2);

  print('The volume of the sphere is: ${volume.toStringAsFixed(2)}');
  print('The surface area of the sphere is: ${surfaceArea.toStringAsFixed(2)}');
}
