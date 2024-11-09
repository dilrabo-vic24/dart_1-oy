int discountPercentage(int? discountPercentage) {
  return discountPercentage ?? 5;
}

void main() {
  print("Discount: ${discountPercentage(null)}");
  print("Discount: ${discountPercentage(10)}");
}