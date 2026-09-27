// Q30: Complete Student Management System
// Demonstrates encapsulation, inheritance, polymorphism, and abstraction.

// --- Abstraction: base class with an abstract method ---
abstract class Person {
  final String name;
  final int id;

  Person(this.name, this.id);

  // Abstract method - forces subclasses to define their own role description
  String describeRole();

  void displayBasicInfo() {
    print('ID: $id | Name: $name | Role: ${describeRole()}');
  }
}

// --- Inheritance & Polymorphism ---
class Student extends Person {
  // Encapsulation: private field with getter/setter
  double _gpa;
  final List<Enrollment> enrollments = [];

  Student(String name, int id, this._gpa) : super(name, id);

  double get gpa => _gpa;
  set gpa(double value) {
    if (value < 0.0 || value > 4.0) {
      print('Invalid GPA. Must be between 0.0 and 4.0.');
      return;
    }
    _gpa = value;
  }

  @override
  String describeRole() => 'Student';

  void enroll(Course course) {
    enrollments.add(Enrollment(this, course));
    print('$name enrolled in ${course.title}.');
  }

  void printTranscript() {
    print('--- Transcript for $name ---');
    for (var e in enrollments) {
      print('  ${e.course.title} (${e.course.credits} credits) - Grade: ${e.grade ?? "In Progress"}');
    }
    print('  GPA: $_gpa');
  }
}

class Instructor extends Person {
  String department;

  Instructor(String name, int id, this.department) : super(name, id);

  @override
  String describeRole() => 'Instructor ($department)';
}

class Course {
  final String title;
  final String courseCode;
  final int credits;
  Instructor? instructor;

  Course(this.title, this.courseCode, this.credits, {this.instructor});

  void assignInstructor(Instructor i) {
    instructor = i;
    print('${i.name} assigned to teach $title.');
  }
}

class Enrollment {
  final Student student;
  final Course course;
  String? grade;

  Enrollment(this.student, this.course);

  void assignGrade(String g) {
    grade = g;
    print('Grade "$g" assigned to ${student.name} for ${course.title}.');
  }
}

void main() {
  Instructor prof = Instructor('Dr. Rahman', 501, 'Computer Science');

  Course oop = Course('Object-Oriented Programming', 'CSE201', 3);
  oop.assignInstructor(prof);

  Student s1 = Student('Raiyan', 1001, 3.10);
  Student s2 = Student('Ifty', 1002, 3.60);

  // Polymorphism: calling displayBasicInfo() works the same for both
  // Person subtypes even though describeRole() behaves differently.
  List<Person> people = [prof, s1, s2];
  for (var p in people) {
    p.displayBasicInfo();
  }

  s1.enroll(oop);
  s2.enroll(oop);

  s1.enrollments.first.assignGrade('A-');
  s2.enrollments.first.assignGrade('A');

  s1.printTranscript();
  s2.printTranscript();
}
