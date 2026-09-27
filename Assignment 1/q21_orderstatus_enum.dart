// Q21: enum with different messages per value
enum OrderStatus { pending, shipped, delivered }

void showStatusMessage(OrderStatus status) {
  switch (status) {
    case OrderStatus.pending:
      print('Your order is pending confirmation.');
      break;
    case OrderStatus.shipped:
      print('Your order has been shipped.');
      break;
    case OrderStatus.delivered:
      print('Your order has been delivered.');
      break;
  }
}

void main() {
  for (var status in OrderStatus.values) {
    showStatusMessage(status);
  }
}
