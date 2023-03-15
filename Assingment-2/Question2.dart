class Student {
  late String name;
  late int age;
  late String major;
  late double gpa;

  set setName(String name) {
    this.name = name;
  }

  String get getName {
    return name;
  }

  set setAge(int age) {
    this.age = age;
  }

  int get getAge {
    return age;
  }

  set setMajor(String major) {
    this.major = major;
  }

  String get getMajor {
    return major;
  }

  set setGpa(double gpa) {
    this.gpa = gpa;
  }

  double get getGpa {
    return gpa;
  }

  String getGradeLevel() {
    if (age <= 16) {
      return "School student";
    } else if (age >= 17 && age <= 19) {
      return "College Junior";
    } else if (age >= 20 && age <= 24) {
      return "College Senior";
    } else if (age >= 26) {
      return "College Graduate";
    } else {
      return "Employee";
    }
  }
}

void main() {
  Student stu = new Student();
  stu.setName = "Saad Ali";
  stu.setAge = 27;
  stu.setMajor = "Software Engineering";
  stu.setGpa = 3.2;

  print("----------STUDENT DETAILS----------");
  print("Name of student is : ${stu.getName}");
  print("major of student is : ${stu.getMajor}");
  print("age of student is : ${stu.getAge}");
  print("gpa of student is : ${stu.getGpa}");
  print("grade level upon his age is : ${stu.getGradeLevel()}");
}
