void main() {
  Map<String, Set<String>> departmentMap = {
    'Dairy': {'Milk', 'Cheese', 'Yogurt', 'Chips'},
    'Fruits': {'Apple', 'Cheese', 'Orange', 'Grapes'},
    'Vegetables': {'Carrot', 'Spinach', 'Potato', 'Apple'},
    'Snacks': {'Chips', 'Cheese', 'Cookies', 'Apple'},
  };

  findProductsInMultipleDepartments(departmentMap);
}

void findProductsInMultipleDepartments(Map<String, Set<String>> departmentMap) {
  Map<String, int> productCount = {};

  departmentMap.forEach((department, products) {
    for (var product in products) {
      productCount[product] = (productCount[product] ?? 0) + 1;
    }
  });

  print("Products available in multiple departments:");
  productCount.forEach((product, count) {
    if (count > 1) {
      print("$product: $count departments");
    }
  });

  print("\nProducts available in only one field:");
  productCount.forEach((product, count) {
    if (count == 1) {
      print("$product: $count department");
    }
  });
}
