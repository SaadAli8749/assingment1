import 'dart:math';
import 'dart:io';

class Circle {
  late double radius;
  set setRadius(double radius) {
    this.radius = radius;
  }

  double get getRadius {
    return radius;
  }

  double circumference() {
    return 2 * pi * radius;
  }
}

void main() {
  var circle = new Circle();
  stdout.write("Enter Radius of a Circle: ");
  double input = double.parse(stdin.readLineSync()!);
  circle.setRadius = input;
  print("Entered Radius is : $input");
  double result = circle.circumference();
  print("Circumference of a circle is : $result");
}
