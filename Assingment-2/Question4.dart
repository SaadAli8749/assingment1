class Course {
  late String _name;
  late String _code;
  late String _instructor;
  late int _credits;
  late double _costPerCredit;

  String get name => _name;
  set name(String value) => _name = value;

  String get code => _code;
  set code(String value) => _code = value;

  String get instructor => _instructor;
  set instructor(String value) => _instructor = value;

  int get credits => _credits;
  set credits(int value) => _credits = value;

  double get costPerCredit => _costPerCredit;
  set costPerCredit(double value) => _costPerCredit = value;

  double calculateTotalCost() {
    return _credits * _costPerCredit;
  }
}

void main() {
  Course c = new Course();
  c._code = "s250997";
  c._credits = 2;
  c._instructor = "Sir Faiz";
  c._name = "Data Structures";
  c._costPerCredit = 5000;
  print("----------Your Selected Course is----------");
  print("Course code : ${c._code}");
  print("Course name : ${c._name}");
  print("course Instructor : ${c._instructor}");
  print("Number of credit hours : ${c._credits}");
  print("Cost of this course : ${c.calculateTotalCost()}");
}
