import 'dart:io';

void main(){
  print("First Number: ");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Second Number: ");
  double num2 = double.parse(stdin.readLineSync()!);
  int quotient = num1 ~/ num2;
  double reminder = num1 % num2;
  print("Quotient: $quotient");
  print("Reminder: $reminder");
}