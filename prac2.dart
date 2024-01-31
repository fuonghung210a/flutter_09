void main(List<String> args) {
  List arr = [
    1,
    2,
    3,
    "đây",
    "kết",
    "là",
    true,
    false,
    {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
    ['thứ', 'quả', 'về'],
    "(phần 1)",
    {"flutter": "dart"},
  ];
  // String result = Capitalize(arr[3]); //viet hoa chu d trong chuoi~ 'day'
  // result += " ${arr[5]}"; //them chu 'la' vao` trong result
  // result += " ${arr[4]}"; //them chu 'ket' vao trong result
  // List<String> _arr = arr[9]; //lay ra phan tu thu 9 cua arr roi them vao list
  // result += " ${_arr[1]}"; //them chu 'qua' vao trong result
  // Map arr1 = arr[8]; // lay ra phan tu tu 8 cua arr roi` gan bang Map arr1
  // Map arr2 = arr.last;
  // String s2 = arr2["flutter"];
  // s2 = Capitalize(s2);
  // String ss2 = arr1[false];
  // ss2 = ss2.toUpperCase().substring(0, ss2.length - 1);
  // result +=
  //     " ${arr1[true]} ${arr1[1]} ${_arr[0]} ${arr[1]} ${_arr[2]} $s2: $ss2 ${arr[10]}";
  // //print out
  // print(result);
  //toi uu:

  String result =
      "${arr[3].toUpperCase().substring(0, 1)}${arr[3].substring(1)}"
      " ${arr[5]} ${arr[4]} ${arr[9][1]} ${arr[8][true]} ${arr[8][1]}"
      " ${arr[9][0]} ${arr[1]} ${arr[9][2]} ${Capitalize(arr.last["flutter"])}: ${arr[8][false].toUpperCase().substring(0, 10)} ${arr[10]}";

  print(result);
}

String Capitalize(String st) {
  if (st.isEmpty) {
    return "";
  } else
    return st[0].toUpperCase() + st.substring(1);
}
