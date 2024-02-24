import 'dart:math';

class Class {
  String nameClass;
  int number;
  List<Student> student;
  Class(this.nameClass, this.number, this.student);
  addStudent() {
    for (int i = 0; i < number; i++);
  }
}

class Flutter extends Class {
  Flutter(super.nameClass, super.number, super.student);
}

class Android extends Class {
  Android(super.nameClass, super.number, super.student);
}

class Ios extends Class {
  Ios(super.nameClass, super.number, super.student);
}

class Web extends Class {
  Web(super.nameClass, super.number, super.student);
}

class Student {
  String name;
  Student(this.name);
}

int remain(Class lopHoc, int total) {
  return total - lopHoc.student.length;
}

getRandom() {
  final random = Random();
  final rdName = random.nextInt(26) + 65;
  return String.fromCharCode(rdName);
}

void main() {
  Student a = Student("A");
  Student b = Student("B");
  Student c = Student("C");
  Student d = Student("D");
  Student e = Student("E");
  Student f = Student("F");

  Flutter flutter = Flutter("Flutter", 11, [a, b]);
  print(flutter.nameClass);
  print(
      "Còn thiếu ${remain(flutter, 11)} trên tổng ${flutter.number} học viên");

  Android android = Android("Android", 12, [b, c, d]);
  Ios ios = Ios("Ios", 13, [d, e, f]);
  Web web = Web("Web", 14, [f]);
}
