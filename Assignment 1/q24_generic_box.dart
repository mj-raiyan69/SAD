// Q24: generic class Box<T>
class Box<T> {
  T value;
  Box(this.value);

  T getValue() => value;

  void setValue(T newValue) {
    value = newValue;
  }
}

void main() {
  Box<int> intBox = Box<int>(42);
  Box<String> strBox = Box<String>('Hello');

  print('Int box: ${intBox.getValue()}');
  print('String box: ${strBox.getValue()}');
}
