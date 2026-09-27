import 'dart:io';

void main(){
  print("Enter first number a = ");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter second number b = ");
  int b = int.parse(stdin.readLineSync()!);
  print("Before swap: a = $a and b = $b");
  int temp = a;
  a = b;
  b = temp;
  print("After Swap: a = $a and b = $b");

}