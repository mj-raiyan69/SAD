// Q22: mixin shared across two unrelated classes
mixin LoggerMixin {
  void logMessage(String message) {
    print('[LOG]: $message');
  }
}

class User with LoggerMixin {
  String name;
  User(this.name);
}

class Product with LoggerMixin {
  String title;
  Product(this.title);
}

void main() {
  User u = User('MJ');
  Product p = Product('Laptop');

  u.logMessage('User ${u.name} created.');
  p.logMessage('Product ${p.title} added to catalog.');
}
