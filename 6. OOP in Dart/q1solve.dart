class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void printDetails() {
    print('ID: $id, Name: $name, RAM: ${ram}GB');
  }
}

void main() {
  var l1 = Laptop(1, 'Dell XPS', 16);
  var l2 = Laptop(2, 'MacBook Pro', 32);
  var l3 = Laptop(3, 'HP Pavilion', 8);

  l1.printDetails();
  l2.printDetails();
  l3.printDetails();
}