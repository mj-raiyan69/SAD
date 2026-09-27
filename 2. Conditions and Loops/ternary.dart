// condition ? exprIfTrue : exprIfFalse
import 'dart:io';
void main(){
  print("Enter number one: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter number two: ");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter number three: ");
  int num3 = int.parse(stdin.readLineSync()!);
  int max = (num1>num2 && num1>num3) ? num1 : (num2>num1 && num2>num3) ? num2 : num3;
  print("$max is the lagest number");
}