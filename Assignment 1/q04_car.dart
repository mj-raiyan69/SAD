// Q4: Named constructors
class Car {
  String type;

  Car.manual() : type = 'Manual' {
    print('This is a Manual transmission car.');
  }

  Car.automatic() : type = 'Automatic' {
    print('This is an Automatic transmission car.');
  }
}

void main() {
  Car c1 = Car.manual();
  Car c2 = Car.automatic();
  print('c1 type: ${c1.type}, c2 type: ${c2.type}');
}
