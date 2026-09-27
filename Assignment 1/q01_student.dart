// Q1: Basic class with attributes, object creation, and display
class Student {
  String name;
  int id;
  double cgpa;

  Student(this.name, this.id, this.cgpa);

  void displayInfo() {
    print('Name: $name');
    print('ID: $id');
    print('CGPA: $cgpa');
  }
}

void main() {
  Student s1 = Student('MJ', 018242001210, 3.10);
  s1.displayInfo();
}
