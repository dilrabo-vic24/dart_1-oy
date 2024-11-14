class Kafedra {
  String kafedraNomi;
  String rahbar;
  int kurslar;

  Kafedra({
    required this.kafedraNomi,
    required this.rahbar,
    required this.kurslar,
  });
  
  void getDepartmentInfo(){
    print("""
Nomi:    $kafedraNomi
Rahbar:  $rahbar
Kurslar: $kurslar
""");}
}

class Professor extends Kafedra{

  String ism;

  Professor({required super.kafedraNomi, required super.rahbar, required super.kurslar, required this.ism});

  @override
  void getDepartmentInfo() {
    print("Prof. ismi:  $ism");
    super.getDepartmentInfo();
  }
  void teach(){
    print("Professor dars o'tyapti");
  }

  void research(){
    print("Professor ilmiy ish bilan band");
  }

  void publish(){
    print("Professorning yangi kitobi nashrdan chiqdi.");
  }
}

void main(List<String> args) {
  Professor professor = Professor(kafedraNomi: "Matematika", rahbar: "Rahbar", kurslar: 3, ism: "Pr.Eshmat");
  professor.getDepartmentInfo();
  professor.publish();
  professor.research();
  professor.teach();  
}
