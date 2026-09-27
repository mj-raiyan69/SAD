void main(){
  List<String> friends = ['Ifty', 'Alom', 'Tahsin', 'Iftihaz', 'Azhar', 'Khan', 'Ali'];
  var result = friends.where((name) => name.toLowerCase().startsWith('a'));
  print("Names starting with A: ");
  for(String name in result){
    print(name);
  }
}