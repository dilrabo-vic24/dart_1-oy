mixin AvtoHisobla{
  double yoqilgiSarfi({required double masofa, required double yoqilgiMiqdori}){
    return yoqilgiMiqdori/masofa;
  }

  double xarajatHisobla({required double masofa, required double narx}){
    return narx/masofa;
  }
}

class Avtomobil with AvtoHisobla {
  String name;

  Avtomobil({
    required this.name,
  });
}

void main(List<String> args) {
  Avtomobil avtomobil1 = Avtomobil(name: "KIA K5");
  print(avtomobil1.yoqilgiSarfi(masofa: 7000, yoqilgiMiqdori: 6));
  print(avtomobil1.xarajatHisobla(masofa: 7000, narx: 4000));
}
