/*void main(){
  for(int i=1; i<=10; i++){    //normal loop
    print("Ali Raiyan");
  }
}*/

/* void main(){
  for(int i = 1; i>=1; i++){    //infinite loop
    print("I love you");
  }
}*/

/*void main(){
  int n = 10;
  for(int i=1; i<=n; i++){
    if(i%2==0){              //Even numbers
      print("Even numbers are: $i");
    }
  }
}*/

void main(){
  List<String> footballPlayers = ["Ronaldo", "Messi", "Neymar", "Mbappe", "Salah"];
  footballPlayers.asMap().forEach((index, value) => print("$value is at index $index"));
}