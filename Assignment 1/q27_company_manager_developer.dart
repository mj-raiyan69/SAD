// Q27: Company class with Manager and Developer subclasses, different salary calculation
abstract class Employee {
  String name;
  Employee(this.name);

  double calculateMonthlySalary();
}

class Manager extends Employee {
  double baseSalary;
  double bonus;

  Manager(String name, this.baseSalary, this.bonus) : super(name);

  @override
  double calculateMonthlySalary() => baseSalary + bonus;
}

class Developer extends Employee {
  double baseSalary;
  int overtimeHours;
  double overtimeRate;

  Developer(String name, this.baseSalary, this.overtimeHours, this.overtimeRate)
      : super(name);

  @override
  double calculateMonthlySalary() => baseSalary + (overtimeHours * overtimeRate);
}

class Company {
  String companyName;
  List<Employee> employees = [];

  Company(this.companyName);

  void addEmployee(Employee e) => employees.add(e);

  void paySalaries() {
    print('Payroll for $companyName:');
    for (var e in employees) {
      print('${e.name}: \$${e.calculateMonthlySalary().toStringAsFixed(2)}');
    }
  }
}

void main() {
  Company company = Company('TechNova');
  company.addEmployee(Manager('Alice', 5000, 800));
  company.addEmployee(Developer('Bob', 4000, 10, 25));

  company.paySalaries();
}
