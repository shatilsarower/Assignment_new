// A. Define an interface named Role:
abstract class Role {
  void displayRole();
}

// B. Create a class Person:
class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  // Getter methods for attributes
  String getName() => name;
  int getAge() => age;
  String getAddress() => address;

  // Implement the Role interface methods
  @override
  void displayRole() {
    print('Role: Unknown');
  }
}

// C. Create a class Student that extends Person:
class Student extends Person {
  String studentID;
  double grade;
  List<double> courseScores;

  Student(String name, int age, String address, this.studentID, this.grade, this.courseScores)
      : super(name, age, address);

  // Override the displayRole() method
  @override
  void displayRole() {
    print('Role: Student');
  }

  // Method to calculate the average score of courses
  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
}

// D. Create another class Teacher that extends Person:
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  // Override the displayRole() method
  @override
  void displayRole() {
    print('Role: Teacher');
  }

  // Method to display the courses taught by the teacher
  void displayCoursesTaught() {
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
}

// E. Create a class StudentManagementSystem:
void main() {
  // Create instances of Student and Teacher classes
  var student = Student('John Doe', 20, '123 Main St', 'S123', 89.0, [90, 85, 82]);
  var teacher = Teacher('Mrs. Smith', 35, '456 Oak St', 'T456', ['Math', 'English', 'Bangla']);

  // Display student information
  print('Student Information:');
  student.displayRole();
  print('Name: ${student.getName()}');
  print('Age: ${student.getAge()}');
  print('Address: ${student.getAddress()}');
  print('Average Score: ${student.calculateAverageScore()}');

  print('\n');

  // Display teacher information
  print('Teacher Information:');
  teacher.displayRole();
  print('Name: ${teacher.getName()}');
  print('Age: ${teacher.getAge()}');
  print('Address: ${teacher.getAddress()}');
  teacher.displayCoursesTaught();
}
