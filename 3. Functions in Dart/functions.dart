//No parameter & no return type
/* void printName(){
  print("My name is Ali Raiyan");
}

void main(){
  printName();
}*/

//No parameter & with return type
/*String studentName(){
  return "Ali Raiyan";
}
void main(){
  String printName = studentName();
print("Student's name is $printName.");
}*/

//With parameter & no return type
/*void printName(String name){
  print("Good job $name");
}

void main(){
  printName("Ali Raiyan");
}*/

//With parameter & with return type
String studentName(String name){
  return "Student's name is $name";
}
void main(){
  String printName = studentName("Ali Raiyan");
  print(printName);
}