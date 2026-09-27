//Calculator
import 'dart:io';
void main(){
  print("Enter first number: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter second number: ");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter an operator (+, -, *, /): ");
  String? op = stdin.readLineSync()!;
  switch(op){
    case '+':
    print("Result: ${num1 + num2}");
    break;
    case '-':
    print("Result: ${num1 - num2}");
    break;
    case '*':
    print("Result: ${num1 * num2}");
    break;
    case '/':
    if(num2 != 0){
    print("Result: ${num1 / num2}");
    }else{
      print("Error: Division by zero is not allowed.");
    }
  }
}