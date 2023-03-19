// Create a Vehicle class with brand, model, and year properties, and a method called drive() that prints a message indicating that the vehicle is being driven. Then create a Car class that inherits from Vehicle and has a numDoors property. Override the drive() method in the Car class to print a message that includes the number of doors
class Vehicle {
  String brand = "";
  String model = "";
  int? year;

  void drive() {
    print('The $brand $model is driven by Saad Ali.');
  }
}

class Car extends Vehicle {
  int? numDoors;

  @override
  void drive() {
    print(
        'The $brand $model with $numDoors doors is being driven by Saad Ali.');
  }
}

void main() {
  var car = Car();
  car.brand = 'Ferrari';
  car.model = 'Purosangue ';
  car.year = 2023;
  car.numDoors = 2;

  car.drive();
}
