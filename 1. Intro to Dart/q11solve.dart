import 'dart:io';

void main(){
  print("Totall bill: ");
  int bill = int.parse(stdin.readLineSync()!);
  print("Number of People: ");
  int p = int.parse(stdin.readLineSync()!);
  double splitBill = bill / p;
  print("Each person pays: $splitBill");
}