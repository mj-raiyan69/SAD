class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  // Getters
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  // Setters
  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;

  void printDetails() {
    print('ID: $id, Brand: $brand, Color: $color, Price: \$${price}');
  }
}

void main() {
  var c1 = Camera(1, 'Canon', 'Black', 899.99);
  var c2 = Camera(2, 'Nikon', 'Silver', 749.50);
  var c3 = Camera(3, 'Sony', 'Grey', 1099.00);

  c1.printDetails();
  c2.printDetails();
  c3.printDetails();

  // Demonstrate setter usage
  c1.price = 850.00;
  print('Updated price for c1: ${c1.price}');
}