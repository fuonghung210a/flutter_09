void main() {
  innitNonNull();
  innitNullable();
  int num = factorial(6); //tinh giai thua cua 6
  int? a = convertStringToInt("2"); //chuyen string sang int
  double? b = convertStringToDouble("23"); //chuyen string sang double
  int integer = 123;
  double doublE = 1.111;
  String str = convertToString(integer); //chuyen int sang string
  String strDouble = convertToDouble(doublE);
  print("Giai thua cua so 6: $num");
  print("a: $a, b: $b, str: $str, strDouble: $strDouble");
}

String convertToDouble(double a) {
  return a.toString();
}

String convertToString(int a) {
  return a.toString();
}

double? convertStringToDouble(String str) {
  if (!str.isEmpty) {
    return double.parse(str);
  } else {
    return null;
  }
}

int? convertStringToInt(String str) {
  if (!str.isEmpty) {
    return int.parse(str);
  } else
    return null;
}

int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void innitNonNull() {
  //non-nullable types
  Object obj;
  double doub = 1.2;
  num nmb = 1;
  int integer = 1;
  String str = "a";
  Iterable it;
  bool bl = true;
  List<String> lst = <String>['a', 'b', 'c'];
}

void innitNullable() {
  //nullable types
  Object? ob = null;
  double? db = null;
  num? nb = null;
  int? intg = null;
  String? strs = null;
  Iterable? itr = null;
  bool? blean = null;
  List<int?>? list = null;
}

const double pi = 3.15;

class A {
  static double money = 111111;
  final double height = 1.3;
  late int age;
}
