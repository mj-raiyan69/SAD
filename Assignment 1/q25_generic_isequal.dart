// Q25: generic method comparing two values of the same type
bool isEqual<T>(T a, T b) {
  return a == b;
}

void main() {
  print(isEqual<int>(5, 5));           // true
  print(isEqual<String>('a', 'b'));    // false
  print(isEqual<double>(3.14, 3.14));  // true
}
