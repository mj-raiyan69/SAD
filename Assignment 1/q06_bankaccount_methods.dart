// Q6: deposit() and withdraw() methods
class BankAccount {
  double balance;

  BankAccount([this.balance = 0.0]);

  void deposit(double amount) {
    if (amount <= 0) {
      print('Deposit amount must be positive.');
      return;
    }
    balance += amount;
    print('Deposited $amount. New balance: $balance');
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Withdrawal amount must be positive.');
      return;
    }
    if (amount > balance) {
      print('Insufficient funds.');
      return;
    }
    balance -= amount;
    print('Withdrew $amount. New balance: $balance');
  }
}

void main() {
  BankAccount acc = BankAccount(1000);
  acc.deposit(500);
  acc.withdraw(300);
  acc.withdraw(5000); // should fail
}
