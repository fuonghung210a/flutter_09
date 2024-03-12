import 'dart:math';

import 'Student.dart';

class Class {
  String _className;
  String get className => _className;
  int _maxMember;
  int get maxMember => _maxMember;
  Set<Student> _studentList = {};
  Set<Student> get studentList => _studentList;
  int _currentMember = 0;
  int get currentMember => _currentMember;
  int _numberOfLessons;
  int get numberOfLessons => _numberOfLessons;
  set numberOfLessons(int numberOfLessons) {
    this._numberOfLessons = numberOfLessons;
  }

  Class(
    this._className,
    this._maxMember,
    this._studentList,
    this._numberOfLessons,
  ) {
    if (_numberOfLessons < 10) {
      throw Exception('Number of lessons must be higher than 10');
    }
  }

  remainMembers() {
    _currentMember = _studentList.length;
    int memberMissing = _maxMember - _currentMember;
    return memberMissing;
  }

  addMissingMembers() {
    while (studentList.length <= maxMember) {
      String studentName = getRandomCharacter();
      Student student = Student(studentName);
      if (studentList.contains(student) != true) {
        studentList.add(student);
      }
    }
  }

  getRandomCharacter() {
    final random = Random();
    final rdnCharCode = random.nextInt(26) + 65;
    return String.fromCharCode(rdnCharCode);
  }

  //
  @override
  String toString() {
    return numberOfLessons.toString();
  }
}

mixin BuildAndroid {
  void buildAndroid(Class builder) {
    print("Building Android app from ${builder.className}");
  }
}
mixin BuildIOS {
  void buildIOS(Class builder) {
    print("Building IOS app from ${builder.className}");
  }
}
mixin BuildWeb {
  void buildWeb(Class builder) {
    print("Building Web app from ${builder.className}");
  }
}
mixin BuildDesktop {
  void buildDesktop(Class builder) {
    print("Building Desktop app from ${builder.className}");
  }
}
