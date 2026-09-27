void createUser(String name, int age, {bool isActive = true}){
  print("Name: $name, Age: $age, Active: $isActive");
}

void main(){
  createUser("Ali", 22, isActive: false);
}