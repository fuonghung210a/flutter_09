import 'Student.dart';
import 'class.dart';

class Android extends Class with BuildAndroid {
  // Android(super.className, super.maxMember, super.studentList,
  //     super.numberOfClasses);
  Android(String className, int maxMember, Set<Student> studentList,
      int numberOfClasses)
      : super(className, maxMember, studentList, numberOfClasses);
}

class IOS extends Class with BuildIOS {
  IOS(super.className, super.maxMember, super.studentList,
      super.numberOfClasses);
}

class Web extends Class with BuildWeb {
  Web(super.className, super.maxMember, super.studentList,
      super.numberOfClasses);
}

class Flutter extends Class
    with BuildAndroid, BuildDesktop, BuildIOS, BuildWeb {
  Flutter(super.className, super.maxMember, super.studentList,
      super.numberOfClasses);
}
