// Q10: private balance, cannot go negative, getter/setter
class BankAccount {
  double _balance = 0.0;

  double get balance => _balance;

  set balance(double value) {
    if (value < 0) {
      print('Balance cannot be negative.');
      return;
    }
    _balance = value;
  }
}

void main() {
  BankAccount acc = BankAccount();
  acc.balance = 500;
  print('Balance: ${acc.balance}');

  acc.balance = -100; // rejected
  print('Balance after invalid set: ${acc.balance}');
}
