import 'dart:io';
void main(){
  print("How many expenses? ");
  int n = int.parse(stdin.readLineSync()!);
  List<int> expenses = [];

  for(int i=0; i<n; i++){
    print("Enter expense ${i+1}: ");
    int expense = int.parse(stdin.readLineSync()!);
    expenses.add(expense);
  }
  double total = 0;
  for(int expense in expenses){
    total += expense;
  }
  print("Total expenses: $total");

}