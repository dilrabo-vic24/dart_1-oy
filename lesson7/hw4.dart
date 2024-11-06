class Kafedra{
  String name;
  String address;
  int _clientsNumber = 0;
  List<String> clientsList = [];

  Kafedra({required this.name, required this.address, int clientsNumber = 0}){
    this._clientsNumber - clientsNumber;
  }

  void addClient(String name){
    clientsList.add(name);
    _clientsNumber ++;
  }

  void kafedraInfo(){
    print("NAME:    $name\nADDRESS:   $address\nCLIENTS:    $clientsList");
    print("Number of clients:   $_clientsNumber");
  }

}

void main(){
  Kafedra kafedra = Kafedra(name: "Programming", address: "Najot ta'lim");
  kafedra.addClient("Client1");
  kafedra.addClient("Client2");

  kafedra.kafedraInfo();
}