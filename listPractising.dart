import 'dart:math';

void main() {
  var _list = ["Float", "Sink", "Swim", "Dive"];
  List<String> dlist = [];
  dlist.add("Float");
  dlist.add("String");
  dlist.addAll(_list);
  dlist.removeWhere(
      (element) => element.contains("Float")); //xoa phan tu contain "Float"
  print(dlist);
  dlist.removeAt(dlist.indexOf("Swim")); //xoa phan tu Swim
  print(dlist);
  dlist.clear(); //xoa toan bo phan tu
  print(dlist);
  //Phuong thuc map:
  List<String> lst = ["Brocoli", "Pepper", "Tomato"];
  List<String> str = lst.map((i) => 'i love $i').toList();
  print(str);

  List<int> lstInt = [2, 4, 6, 8, 10, 12, 14, 16];
  var intArr = lstInt.map((e) => pow(e, 2)).toList();
  print(intArr);
}
