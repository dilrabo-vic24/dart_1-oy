abstract class Employee{
  void work();

  void takeBreak();
}

class Manager extends Employee{

  String? name;

  Manager({required this.name});

  @override
  void takeBreak() {
    print("Manager $name is in break now");
  }

  @override
  void work() {
    print("Manager $name control staffs");
  }
}

class Developer extends Employee{
  String? name;

  Developer({required this.name});
  
  @override
  void takeBreak() {
    print("Developer $name is in break");
  }
  
  @override
  void work() {
    print("Developer $name writes codes");
  }
}

void main(List<String> args) {
  Manager meneger = Manager(name: "Name1");
  meneger.takeBreak();
  meneger.work();

  Developer developer = Developer(name: "Name2");
  developer.takeBreak();
  developer.work();
}