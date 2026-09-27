// Q19: abstract Payment class implemented by CashPayment and CardPayment
abstract class Payment {
  void pay(double amount);
}

class CashPayment extends Payment {
  @override
  void pay(double amount) => print('Paid \$${amount.toStringAsFixed(2)} in cash.');
}

class CardPayment extends Payment {
  @override
  void pay(double amount) => print('Paid \$${amount.toStringAsFixed(2)} via card.');
}

void main() {
  List<Payment> payments = [CashPayment(), CardPayment()];
  for (var p in payments) {
    p.pay(49.99);
  }
}
