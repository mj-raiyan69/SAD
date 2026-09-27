// Q8: list of objects displayed in a loop
class Employee {
  String name;
  String designation;
  double salary;

  Employee(this.name, this.designation, this.salary);

  void displayInfo() {
    print('Name: $name | Designation: $designation | Salary: $salary');
  }
}

void main() {
  List<Employee> employees = [
    Employee('Alice', 'Manager', 80000),
    Employee('Bob', 'Developer', 60000),
    Employee('Carol', 'Designer', 55000),
  ];

  for (Employee e in employees) {
    e.displayInfo();
  }
}
