// Q16: abstract class Appliance with turnOn()/turnOff(), implemented in Fan
abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() => print('Fan is now ON.');

  @override
  void turnOff() => print('Fan is now OFF.');
}

void main() {
  Fan fan = Fan();
  fan.turnOn();
  fan.turnOff();
}
