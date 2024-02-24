class Person {
  final String name;

  final int age;

  Person({required this.name, required this.age});
}

class Artis extends Person {
  Artis({required super.name, required super.age});
  void sketching(Person name) {
    print("${this.name} is Sketching!");
  }
}

class Engineer extends Person implements Sketching, Reading {
  Engineer({required super.name, required super.age});

  @override
  void reading(Person name) {
    print("${this.name} is Reading!");
  }

  @override
  void sketching(Person name) {
    print("${this.name} is Sketching!");
  }
}

class Doctor extends Person implements Exercise, Reading {
  Doctor({required super.name, required super.age});

  @override
  void exercise(Person name) {
    print("${this.name} is Exercising!");
  }

  @override
  void reading(Person name) {
    print("${this.name} is Reading!");
  }
}

class Athlete extends Person {
  Athlete({required super.name, required super.age});
}

class Boxer extends Athlete implements Exercise, Boxing {
  Boxer({required super.name, required super.age});

  @override
  void boxing(Person name) {
    print("${this.name} is Boxing!");
  }

  @override
  void exercise(Person name) {
    print("${this.name} is Exercising!");
  }
}

abstract class Sketching {
  sketching(Person name) {}
}

abstract class Reading {
  reading(Person name) {}
}

abstract class Exercise {
  exercise(Person name) {}
}

abstract class Boxing {
  boxing(Person name) {}
}

void main() {
  Boxer boxer = new Boxer(name: "Hung", age: 12);
  boxer.boxing(boxer);
  Boxer bx = Boxer(name: "Phuong Hung", age: 18);
}
