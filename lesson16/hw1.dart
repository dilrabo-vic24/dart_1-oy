extension Malumot on Map{
  String toliqMalumot(){
    return'${this['nomi']} -  ${this['muallif']}';
  }
}

void main(List<String> args) {
  Map<String, dynamic> kitob = {
    'nomi': 'Dunyo',
    'muallif': 'Ali'
  };

  print(kitob.toliqMalumot());
}