void main() {
  String s = "dban#dsa##";
  String t = "dban#dsa##d";

  List<String> lstS = s.split("");
  List<String> lstT = t.split("");

  var stackS = <String>[];
  var stackT = <String>[];
  for (String str in lstS) {
    if (str == "#" && stackS.isNotEmpty) {
      stackS.removeLast();
    } else {
      stackS.add(str);
    }
  }
  for (String str in lstT) {
    if (str == "#" && stackT.isNotEmpty) {
      stackT.removeLast();
    } else {
      stackT.add(str);
    }
  }
  s = stackS.join("");
  t = stackT.join("");
  print(t == s);
}
