// Q26: generic method bounded to num
T findLargest<T extends num>(T a, T b) {
  return a > b ? a : b;
}

void main() {
  print(findLargest<int>(10, 25));
  print(findLargest<double>(3.5, 2.1));
}
