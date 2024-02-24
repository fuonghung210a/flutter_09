class Class {
  String nameClass;
  int number;
  List<Student> student = [];
  Class(this.nameClass, this.number, this.student);
  int remain(Class lopHoc) {
    return number - student.length;
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

void addStudentToClass(Class lopHoc, List<String> studentName) {
  studentName.forEach((name) {
    lopHoc.student.add(Student(name));
  });
}

void main() {
  Student a = Student('A');
  Student b = Student('B');
  Student c = Student('C');
  List<Student> lopFlutter = [a, b, c];
  Flutter flutter = Flutter("Flutter", 11, lopFlutter);
}
