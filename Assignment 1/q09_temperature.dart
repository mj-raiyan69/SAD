// Q9: private field with setter (Celsius) and getter (Fahrenheit)
class Temperature {
  double _temp = 0.0; // stored in Celsius

  set celsius(double value) {
    _temp = value;
  }

  double get fahrenheit => (_temp * 9 / 5) + 32;
}

void main() {
  Temperature t = Temperature();
  t.celsius = 25;
  print('Fahrenheit: ${t.fahrenheit}');
}
