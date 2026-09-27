//if-else condition
import 'dart:io';
/*void main(){
  print("Enter age: ");
  int age = int.parse(stdin.readLineSync()!);
  if(age>=18){
    print("You're a voter");
  }else{
    print("You're underage to be a voter");
  }
}*/
void main(){
  print("Enter number one: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter number two: ");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter number three: ");
  int num3 = int.parse(stdin.readLineSync()!);
  if(num1>num2 && num1>num3){
    print("$num1 is the largest number");
  }else if(num2>num1 && num2>num3){
    print("$num2 is the largest number");
  }else{
    print("$num3 is the largest number");
  }
}