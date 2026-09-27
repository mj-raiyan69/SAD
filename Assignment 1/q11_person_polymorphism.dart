// Q11: method overriding across Person, Teacher, Student
class Person {
  String name;
  Person(this.name);

  void displayInfo() {
    print('Person: $name');
  }
}

class Teacher extends Person {
  String subject;
  Teacher(String name, this.subject) : super(name);

  @override
  void displayInfo() {
    print('Teacher: $name | Subject: $subject');
  }
}

class Student extends Person {
  String major;
  Student(String name, this.major) : super(name);

  @override
  void displayInfo() {
    print('Student: $name | Major: $major');
  }
}

void main() {
  Person p1 = Teacher('Mrs. Lisa', 'SAD');
  Person p2 = Student('Raiyan', 'CSE');

  p1.displayInfo();
  p2.displayInfo();
}
