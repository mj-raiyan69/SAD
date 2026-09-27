// Q5: final fields initialized with a const constructor
class Customer {
  final String name;
  final int customerId;
  final String email;

  const Customer(this.name, this.customerId, this.email);

  void displayInfo() {
    print('Customer: $name (#$customerId) - $email');
  }
}

void main() {
  const Customer c = Customer('Alice', 101, 'alice@example.com');
  c.displayInfo();
}
