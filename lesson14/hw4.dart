class Animal {
  String name;
  String species;
  int age;
  String habitat;

  Animal(this.name, this.species, this.age, this.habitat);

  String eat() {
    return "$name is eating.";
  }

  String sleep() {
    return "$name is sleeping.";
  }
}

class Cat extends Animal {
  String color;

  Cat(String name, int age, String habitat, this.color)
      : super(name, "Cat", age, habitat);

  String purr() {
    return "$name is purring.";
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, String habitat, this.breed)
      : super(name, "Dog", age, habitat);

  String bark() {
    return "$name is barking.";
  }
}

class Bird extends Animal {
  double wingSpan;

  Bird(String name, int age, String habitat, this.wingSpan)
      : super(name, "Bird", age, habitat);

  String fly() {
    return "$name is flying.";
  }
}

class PredatorAnimal extends Animal {
  String huntingArea;

  PredatorAnimal(String name, int age, String habitat, this.huntingArea)
      : super(name, "Predator", age, habitat);

  String hunt() {
    return "$name is hunting.";
  }
}

void main() {
  var cat = Cat("Mosh", 2, "House", "White");
  print(cat.eat());
  print(cat.purr());

  var dog = Dog("Betxoven", 4, "Garden", "Bulldog");
  print(dog.sleep());
  print(dog.bark());

  var bird = Bird("Kakku", 1, "Forest", 0.7);
  print(bird.eat());
  print(bird.fly());

  var lion = PredatorAnimal("Simba", 5, "Savannah", "Jungle");
  print(lion.sleep());
  print(lion.hunt());
}
