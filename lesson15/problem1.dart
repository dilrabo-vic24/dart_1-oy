abstract class Shakl{
  int tomon;
  String nom;
  Shakl(this.nom, this.tomon);
}

class Uchburchak implements Shakl{
  @override
  String nom;

  @override
  int tomon;
  
  Uchburchak(this.nom, this.tomon);

  void uchburchakInfo() {
    print("name:  $nom");
    print("tomon: $tomon");
  }
}

class Tortburchak implements Shakl{
  @override
  String nom;

  @override
  int tomon;

  Tortburchak(this.nom, this.tomon);
}

void main(List<String> args) {
  Uchburchak uchburchak = Uchburchak("UCHBURCHAK", 4);
  uchburchak.uchburchakInfo();
}