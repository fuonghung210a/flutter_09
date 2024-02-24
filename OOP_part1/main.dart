import 'Student.dart';
import 'appBuild.dart';

void main() {
//khoi tao 6 hoc sinh
  Student a = new Student("A");
  Student b = new Student("B");
  Student c = new Student("C");
  Student d = new Student("D");
  Student e = new Student("E");
  Student f = new Student("F");
//khoi tao 4 danh sach  hoc sinh lop:  flutter, ios, android, web
  Set<Student> flutterClass = {a, b};
  Set<Student> androidClass = {b, c, d};
  Set<Student> iosClass = {d, e, f};
  Set<Student> webClass = {f};
//khoi tao lop hoc:
  Flutter flutter = Flutter("Flutter", 11, flutterClass);
  Android android = Android("Android", 12, androidClass);
  IOS ios = IOS("IOS", 13, iosClass);
  Web web = Web("Web", 14, webClass);
  print(
      "So luong thanh vien con thieu cua lop Flutter: ${flutter.remainMembers()}");
  print(
      "So luong thanh vien con thieu cua lop Flutter: ${android.remainMembers()}");
  print(
      "So luong thanh vien con thieu cua lop Flutter: ${ios.remainMembers()}");
  print(
      "So luong thanh vien con thieu cua lop Flutter: ${web.remainMembers()}");
//them cac thanh vien con thieu cua cac lop
  flutter.addMissingMembers();
  android.addMissingMembers();
  ios.addMissingMembers();
  web.addMissingMembers(); //
  print(
      "Toan bo thanh vien cua lop Flutter: ${flutter.studentList.toString()}");
  print(
      "Toan bo thanh vien cua lop Android: ${android.studentList.toString()}");
  print("Toan bo thanh vien cua lop Ios: ${ios.studentList.toString()}");
  print("Toan bo thanh vien cua lop web: ${web.studentList.toString()}");
//build app:
  flutter.buildAndroid(flutter);
  flutter.buildDesktop(flutter);
  flutter.buildIOS(flutter);
  flutter.buildWeb(flutter);
  ios.buildIOS(ios);
}
