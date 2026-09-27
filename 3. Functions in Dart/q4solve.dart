import 'dart:math';
String generatePassword(){
  const length =8;
  String chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  Random random = Random();
  String password = ' ';
  for(int i=1; i<length; i++){
    password += chars[random.nextInt(chars.length)];
  }
  return password;
}

void main(){
  print(generatePassword());
}