void main(){
  Map<String, dynamic> person = {
    'name' : 'Raiyan',
    'phone' : '01638688673',
    };
    var result = person.keys.where((key) => key.length ==4,);
    print("Key length with 4: ");
    for(String key in result){
      print(key);
    }

}