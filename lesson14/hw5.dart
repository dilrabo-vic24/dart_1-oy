class Car {
  String brand;
  String model;
  int year;
  String color;
  double price;
  bool engineRunning = false;

  Car({
    required this.brand,
    required this.model,
    required this.year,
    required this.color,
    required this.price,
  });

  void startEngine() {
    if (!engineRunning) {
      engineRunning = true;
      print("The engine has started.");
    } else {
      print("The engine is already running.");
    }
  }

  void stopEngine() {
    if (engineRunning) {
      engineRunning = false;
      print("The engine has stopped.");
    } else {
      print("The engine is already off.");
    }
  }

  void drive() {
    if (engineRunning) {
      print("The car is driving.");
    } else {
      print("Start the engine first to drive.");
    }
  }

  void getDetails(){
    print("BRAND:   $brand");
    print("MODEL:   $model");
    print("YEAR:    $year");
    print("COLOR:   $color");
    print("PRICE:   $price");
  }

}

class SportCars extends Car{

  double maxSpeed;
  double acceleration;

  SportCars({
    required super.brand, 
    required super.model, 
    required super.year, 
    required super.color, 
    required super.price,
    required this.maxSpeed,
    required this.acceleration});
  
  void boost({required double extrSpeed}){
    this.maxSpeed += extrSpeed;
  }

  void getSportCarDetails() {
    super.getDetails();
    print("MAX SPEED:     $maxSpeed");
    print("ACCELERATION:  $acceleration");
  }
}

class Truck extends Car {
  double loadCapacity;

  Truck({required super.brand, 
  required super.model, 
  required super.year, 
  required super.color, 
  required super.price,
  required this.loadCapacity});


  void loadCargo() {
    print("Cargo has been loaded. Capacity: ${loadCapacity} tons.");
  }

  void unloadCargo() {
    print("Cargo has been unloaded.");
  }

  void getTruckDetails() {
    super.getDetails();
    print("LOAD CAPACITY: ${loadCapacity} TONS");
  }
}

class ElectricCar extends Car {
  double batteryCapacity;
  double chargeLevel;

  ElectricCar({required super.brand, 
  required super.model, 
  required super.year, 
  required super.color, 
  required super.price,
  required this.batteryCapacity,
  required this.chargeLevel});



  void recharge() {
    chargeLevel = 100.0;
    print("The car is fully recharged.");
  }

  void getElectricCarDetails() {
    super.getDetails();
    print("Battery Capacity: ${batteryCapacity} kWh");
    print("Charge Level: $chargeLevel%");
  }
}

class CarManagementSystem{
  List<Car> cars = [];

  void carAdd(Car car){
    cars.add(car);
    print("Car added");
  }

  void carRemove(Car car){
    cars.remove(car);
    print("Car removed");
  }

  List<Car> filterByType(Type type) {
    return cars.where((car) => car.runtimeType == type).toList();
  }

  void sortCarsByPrice() {
    cars.sort((a, b) => a.price.compareTo(b.price));
    print("Cars sorted by price.");
  }
}
void main(){
  Car car1 = Car(brand: 'Toyota', model: 'Corolla', year: 2020, color: 'Red', price: 25000);
  SportCars sportCar1 = SportCars(brand: 'Ferrari', model: '488', year: 2022, color: 'Yellow', price: 280000, maxSpeed: 330, acceleration: 3.2);
  Truck truck1 = Truck(brand: 'Volvo', model: 'FH16', year: 2021, color: 'Blue', price: 120000, loadCapacity: 18.0);
  ElectricCar electricCar1 = ElectricCar(brand: 'Tesla', model: 'Model S', year: 2023, color: 'Black', price: 75000, batteryCapacity: 100, chargeLevel: 85);

  CarManagementSystem cms = CarManagementSystem();

  cms.carAdd(car1);
  cms.carAdd(sportCar1);
  cms.carAdd(truck1);
  cms.carAdd(electricCar1);

  print("----------------------------------------");
  car1.getDetails();
  sportCar1.getSportCarDetails();
  truck1.getTruckDetails();
  electricCar1.getElectricCarDetails();

  print("-----------------------------------------");
  sportCar1.boost(extrSpeed: 20.0);
  sportCar1.getSportCarDetails();

  print("------------------------------------------");
  truck1.loadCargo();
  truck1.unloadCargo();

  print("----------------------------------------");
  electricCar1.recharge();
  electricCar1.getElectricCarDetails();

  print("------------------------------------------");
  cms.sortCarsByPrice();

  List<Car> sportCars = cms.filterByType(SportCars);
  print("Sport Cars: ${sportCars.length}");
}
