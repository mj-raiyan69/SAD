// Q20: extension method to capitalize first letter
extension StringCasingExtension on String {
  String toCapitalized() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

void main() {
  String word = 'dart';
  print(word.toCapitalized()); // Dart

  String sentence = 'hello world';
  print(sentence.toCapitalized()); // Hello world
}
