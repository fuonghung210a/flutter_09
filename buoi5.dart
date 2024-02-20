void main(List<String> args) {
  TestAbstractClass a = TestAbstractClassImpl();
  a.test();
}

abstract class TestAbstractClass {
  late final int a;
  void test();
}

class TestAbstractClassImpl implements TestAbstractClass {
  @override
  int a = 10;

  @override
  void test() {
    print("test");
  }
}
