// Q7: static-only utility class
import 'dart:io';

class MathHelper {
  MathHelper._(); // private constructor prevents instantiation

  static double add(double a, double b) => a + b;
  static double multiply(double a, double b) => a * b;
}

void main() {
  print('Enter two numbers: ');
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  print('Sum: ${MathHelper.add(a, b)}');
  print('Product: ${MathHelper.multiply(a, b)}');
}
