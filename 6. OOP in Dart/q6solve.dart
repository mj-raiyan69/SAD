abstract class Bottle {
  void open();

  factory Bottle() = CokeBottle;
}

class CokeBottle implements Bottle {
  @override
  void open() {
    print('Coke bottle is opened');
  }
}

void main() {
  Bottle bottle = Bottle(); // uses factory constructor
  bottle.open();
}