import 'dart:io';
//o'zingizni tanishtiring dasturi
void main() {
  print('\x1B[2J\x1B[0;0H');

  introduceYourself("Jack", 12, 'Deagu');
}

void introduceYourself(String name, [int age = 20, String city = 'Seoul']){
  stdout.write("""
------------------ABOUT MYSELF--------------------------
MY NAME:    $name
AGE:        $age
CITY:       $city
""");
}