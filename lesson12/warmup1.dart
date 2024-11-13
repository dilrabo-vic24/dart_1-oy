//Ikkita do‘stlar guruhini Set yordamida yarating.
// Ikkala guruhda ham mavjud bo‘lgan do‘stlarni aniqlash uchun intersection metodidan foydalaning.

void main(){
  Set<String> friends1 = {"Eshmat", "Toshmat", "Tesha"};
  Set<String> friends2 = {"Ali", "Vali", "Tesha"};

  friends1 = friends1.intersection(friends2);

  print(friends1);

}