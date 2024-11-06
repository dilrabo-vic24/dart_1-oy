class HouseholdApplians{
  String? type;
  int? dailyEnergy;
  int? workDays;

  HouseholdApplians(this.type, this.dailyEnergy, this.workDays);

  HouseholdApplians.energyEfficient(this.type, {dailyEnergy = 2, workDays = 25}){
    this.dailyEnergy = dailyEnergy;
    this.workDays = workDays;
  }

  int monthlyEnergy(){
    return dailyEnergy! * workDays!;
  }

  @override
 String toString() {
    return "TYPE:   $type\nDAILY ENERGY:    $dailyEnergy\nWORKING DAYS:   $workDays";
  }
}

void main(){
  HouseholdApplians television = HouseholdApplians("television", 3, 30);
  HouseholdApplians refrigerator = HouseholdApplians.energyEfficient("refrigator");

  print(television);
  print(refrigerator);

  print("Monthly energy of television: ${television.monthlyEnergy()}");
  print("Monthy energy of refrigator:  ${refrigerator.monthlyEnergy()}");
}