void main() {
  Dog dog = Dog(name: "Lu", limbs: 4);
  Fish fish = Fish(name: "Nemo", limbs: 0);
  Duck duck = Duck(name: "Donal", limbs: 2);
  Bird bird = Bird(name: "Penguin", limbs: 2);

  dog.makeSound();
  fish.makeSound();
  duck.makeSound();
  bird.makeSound();
  dog.sleep();
  fish.sleep();
  duck.sleep();
  bird.sleep();
  dog.wake();
}

class Animal {
  bool sleeping = false;
  final String? name;
  final int? limbs;

  Animal({required this.name, required this.limbs});
  void sleep() {
    this.sleeping = true;
    print("$name is sleeping");
  }

  void wake() {
    this.sleeping = false;
    print("$name is not sleeping");
  }

  void makeSound() {
    print("Make some noise");
  }
}

class Dog extends Animal {
  Dog({required super.name, required super.limbs});

  @override
  void makeSound() {
    print("$name is barking");
  }
}

class Fish extends Animal {
  Fish({required super.name, required super.limbs});

  @override
  void makeSound() {
    print("Glug Glug Glug");
  }
}

class Duck extends Animal {
  Duck({required super.name, required super.limbs});

  @override
  void makeSound() {
    print("Quack Quack Quack");
  }
}

class Bird extends Animal {
  Bird({required super.name, required super.limbs});
  @override
  void makeSound() {
    print("Chirp Chirp Chirp");
  }
}
