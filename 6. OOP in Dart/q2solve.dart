class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void printDetails() {
    print('ID: $id, Name: $name, Price: \$${price}');
  }
}

void main() {
  List<House> houses = [];

  houses.add(House(1, 'Lake View Villa', 250000));
  houses.add(House(2, 'City Apartment', 120000));
  houses.add(House(3, 'Countryside Cottage', 90000));

  for (var house in houses) {
    house.printDetails();
  }
}