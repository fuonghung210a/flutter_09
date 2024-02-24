class Animal {
  String get name => 'AnimalName';
}

class MeowMeow extends Animal {
  String get meo => 'Meow Meow';
}

class WolfWolf extends Animal {
  String get gaugau => 'Gau Gay';
}

class SuperialsAnimal<T extends Animal> {
  final T action;
  const SuperialsAnimal({required this.action});
}

void main() {
  SuperialsAnimal<Animal> animals = SuperialsAnimal(action: Animal());
  SuperialsAnimal<MeowMeow> meo = SuperialsAnimal(action: MeowMeow());
  SuperialsAnimal<WolfWolf> doggo = SuperialsAnimal(action: WolfWolf());

  print("General animal: ${animals.action.name}");
  print("Meo meo : ${meo.action.meo}");
  print("Doggo : ${doggo.action.gaugau}");
}
