class Animal {
  String name;
  Animal({
    required this.name,
  });

  void animalName(){
    print("I'm a $name");
  }
}

class Dog extends Animal{

  Dog({required super.name});

  @override
  void animalName() {
    super.animalName();
    print("My voice is Vov-vov");
  }
}

class Cat extends Animal{

  Cat({required super.name});

  @override
  void animalName() {

    super.animalName();
    print("My voice is miyov - miyov");
  }

}

void main(List<String> args) {

  List<Animal> animals = [Dog(name: "Betxoven"), Cat(name: "Mosh")];

  for(var animal in animals){
    if(animal is Dog){
      print("I'm a dog");
      animal.animalName();
    }else{
      print("I'm a cat");
      animal.animalName();
    }
  }

}
