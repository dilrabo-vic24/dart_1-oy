mixin Ovqatlanmoq{
  void ovqatlanish(String ism){
    print("$ism ovqatlanyapti");
  }
}

mixin Uxlamoq{
  void uxlash(String ism){
    print("$ism uxlayapti");
  }
}

class Hayvon with Ovqatlanmoq, Uxlamoq{
  final String ism;

  Hayvon(this.ism);
}

void main(){
  Hayvon hayvon = Hayvon("Mosh");
  hayvon.ovqatlanish("Mosh");
  hayvon.uxlash("Mosh");
}