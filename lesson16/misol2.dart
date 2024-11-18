extension MaxQiymat on List<num> {
  num maxQiymatniTopish() {
    return this.reduce((a, b) => a > b ? a : b);
  }
}

void main(List<String> args) {
  List<num> qiymatlar = [1, 5, 7, 4, 57, 3, 2];
  print(qiymatlar.maxQiymatniTopish());
}
