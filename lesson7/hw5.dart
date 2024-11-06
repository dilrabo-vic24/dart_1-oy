class ElectricCar {
  String model;
  int batteryCapacity;
  int distance;

  ElectricCar({required this.model, required this.batteryCapacity, required this.distance});

  ElectricCar.fastCharging(this.model)
    :batteryCapacity = 60,
    distance = 5;

  int calculateDistance(){
    return this.batteryCapacity * this.distance;
  }


  @override
  String toString() => 'ElectricCar(model: $model, batteryCapacity: $batteryCapacity, distance: $distance)';
}

void main(){
  ElectricCar electricCar = ElectricCar(model: "Tesla", batteryCapacity: 65, distance: 6);
  print(electricCar.toString());

  ElectricCar electricCar1 = ElectricCar.fastCharging("KIA K5");
  print(electricCar1);

  print("Total distance: ${electricCar.calculateDistance()}");
  print("Total distance: ${electricCar1.calculateDistance()}");
}