class Meal{
  String name;
  double price;
  int calorie;

  Meal({required this.name, required this.price, required this.calorie});

  void mealInfo(){
    print("""
NAME:     $name
PRICE:    $price
CALORIE:  $calorie
""");}

}

class Restaurant{
  List<Meal> meals = [];

  Restaurant({required this.meals});

  void addMeal(Meal newMeal){
    meals.add(newMeal);
  }

  void mealsOfRestaurantInfo(){
    meals.forEach((meal) => meal.mealInfo());
  }

  void mealsOfRestaurant(){
    List<String> mealsName = [];
    meals.forEach((meal) => mealsName.add(meal.name));
    print("Meals of restaurant: $mealsName");
  }
}

void main(){
  Meal meal1 = Meal(name: "Pasta", price: 12.99, calorie: 500);
  Meal meal2 = Meal(name: "Salad", price: 8.50, calorie: 200);

  Restaurant restaurant = Restaurant(meals: [meal1, meal2]);

  restaurant.mealsOfRestaurant();

  restaurant.addMeal(Meal(name: "Pizza", price: 11.2, calorie: 400));

  restaurant.mealsOfRestaurant();
  restaurant.mealsOfRestaurantInfo();
}