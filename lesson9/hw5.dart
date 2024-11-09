class Car {
  String model;
  String ownerName;
  int? year;
  int? mileage;
  int warranty = 5;

  Car({required this.model,required this.ownerName, this.year, this.mileage}) {
    calculateWarranty();
  }

  void calculateWarranty() {
    int mileageForCalculation = mileage ?? 0;
    if (mileageForCalculation >= 100000) {
      warranty = warranty - mileageForCalculation ~/ 100000;
      warranty = warranty > 0 ? warranty : 0;
    }
  }

  String getCarDetails() {
    return """
MODEL: $model
OWNER NAME: $ownerName
YEAR: ${year ?? 2000}
MILEAGE: ${mileage ?? "NOT GIVEN"}
WARRANTY: $warranty
""";}
}

void main(){
  Car car1 = Car(model: "model1", ownerName: "owner1");
  print(car1.getCarDetails());

  Car car2 = Car(model: "model2", ownerName: "owner2", mileage: 235325, year: 2002);
  print(car2.getCarDetails());
}