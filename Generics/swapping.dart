void main() {
  List<String> lst = ['123', '321'];
  swapping(lst, 0, 1);
  print(lst);
}

void swapping<T>(List<T> list, int index1, int index2) {
  if (index1 < 0 ||
      index2 < 0 ||
      index1 >= list.length ||
      index2 >= list.length) {
    print("Index_1 or Index_2 does not exist");
  }
  T temp = list[index1];
  list[index1] = list[index2];
  list[index2] = temp;
}
