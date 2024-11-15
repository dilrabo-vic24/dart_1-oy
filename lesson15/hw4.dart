// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract  class Product{
    void calculatePrice();

    Product getCategory();
}

class Fruit extends Product {
    double? basePrice;
    int? discount;

    Fruit({this.basePrice, this.discount});
    
    @override
    void calculatePrice() {
        basePrice = basePrice?? 0 *(1 - (discount?? 0)/100);
        print("Total price:  $basePrice");
    }
    
    @override
    Product getCategory() => this;
}

class Meat extends Product {
    double? basePrice;
    int? discount; 

    Meat({this.basePrice, this.discount});

    @override
    void calculatePrice() {
        basePrice = (basePrice?? 0 *(1 - (discount?? 0)/100)) * 1.05;
        print("Total price:  $basePrice"); 
    }

    @override
    Product getCategory() => this;
}

void main(List<String> args) {
    Fruit fruit = Fruit(basePrice: 100, discount: 10);
    fruit.calculatePrice();
    print(fruit.getCategory());

    Meat meat = Meat(basePrice: 200, discount: 5);
    meat.calculatePrice();
    print(meat.getCategory());
}