import'dart:io';

void main(){
  print("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);
  int total = 0;
  for(int i = 1; i <=n; i++){
    total += i;
  }
  print("Sum of the first $n natural numbers: $total");
}