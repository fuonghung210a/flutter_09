main(List<String> args) {
  Map<int, String> map1 = Map<int, String>(); //generic
  var map0 = {
    1: "one",
    2: "two",
    3: "three",
  }; //literals
  var map2 = Map(); //Using Constructor
  map2[1] = "one";
  map2[2] = "two";
  map1[12] = "twelve";
  map1[1] = "one";
  map1[2] = "two";
  print("$map2$map0"); // print out map2
  print(map2.length); //print out pairs number of map2
  print(map2[2]); //retrieve value of key '2'
  print(map2.containsKey(3)); //check contains
  dynamic key = map2.keys; //get all keys of map2
  print(key);
  map2.remove(2); //remove pair
  print(map2);
}
