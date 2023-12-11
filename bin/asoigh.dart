/// Define an interface named Role

abstract class Role {
  void displayRole();
}

/// Create a class Person

class Person implements Role {
  String name;
  int age;
  String address;
  Role role;

  Person(this.name, this.age, this.address, this.role);

  @override
  void displayRole() {
    print("Role: ${role.runtimeType}");
  }

  String getName() => name;
  int getAge() => age;
  String getAddress() => address;
}

/// Create a class Student that extends Person

class Student extends Person {
  int studentID;
  double? averageScore;
  late final List<double> courseScores;

  Student(String name, int age, String address, this.studentID)
      : super(name, age, address, StudentRole()) {
    courseScores = [];
  }


  void addCourseScore(double score) {
    courseScores.add(score);
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
}



class Teacher extends Person {
  int teacherID;
  List<String> coursesTaught = [];


  Teacher(String name, int age, String address, this.teacherID)
      : super(name, age, address, TeacherRole()) {
    coursesTaught = [];
  }


  void addCourseTaught(String course) {
    coursesTaught.add(course);
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}



void main() {

  var student = Student("John Doe", 20, "123 Main St", 1234);
  student.addCourseScore(90);
  student.addCourseScore(85);
  student.addCourseScore(82);

  var teacher = Teacher("Mrs. Smith", 35, "456 Oak St", 5678);
  teacher.addCourseTaught("Math");
  teacher.addCourseTaught("English");
  teacher.addCourseTaught("Bangla");

  print("Student Information:");
  student.displayRole();
  print("Name: ${student.getName()}");
  print("Age: ${student.getAge()}");
  print("Address: ${student.getAddress()}");
  print("Average Score: ${student.calculateAverageScore().toStringAsFixed(1)}");

  print("\nTeacher Information:");
  teacher.displayRole();
  print("Name: ${teacher.getName()}");
  print("Age: ${teacher.getAge()}");
  print("Address: ${teacher.getAddress()}");
  teacher.displayCoursesTaught();
}


class StudentRole implements Role {
  @override
  void displayRole() {
    // TODO: implement displayRole
  }
}

class TeacherRole implements Role {
  @override
  void displayRole() {
    // TODO: implement displayRole
  }
}
