int getValue(int? value) {
  return value ?? 0;
}

void main() {
  print(getValue(5));    // 5
  print(getValue(null)); // 0
}