void main(){
  Car car1 = Car(model: "model1", year: 2000);
  print(car1);

  Car? car2;
  print(car2);
  print(car2?.model);
}

class Car {
  String? model;
  int? year;

  Car({this.model, this.year});


  @override
  String toString() => 'Car(model: $model, year: $year)';
}
