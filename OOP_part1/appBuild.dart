import 'class.dart';

class Android extends Class with BuildAndroid {
  Android(super.className, super.maxMember, super.studentList);
}

class IOS extends Class with BuildIOS {
  IOS(super.className, super.maxMember, super.studentList);
}

class Web extends Class with BuildWeb {
  Web(super.className, super.maxMember, super.studentList);
}

class Flutter extends Class
    with BuildAndroid, BuildDesktop, BuildIOS, BuildWeb {
  Flutter(super.className, super.maxMember, super.studentList);
}
