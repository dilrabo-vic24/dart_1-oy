import 'dart:isolate';

void calculateSquares(SendPort sendPort){
  List<int> numbers = List.generate(1000000, (index) => index + 1);

  List<int> squaredNumbers = numbers.map((number) => number * number).toList();

  sendPort.send(squaredNumbers);
}

void main() async{
  ReceivePort recievePort = ReceivePort();

  Isolate.spawn(calculateSquares, recievePort.sendPort);

  recievePort.listen((message){
    print(message.take(10000).toList());
    recievePort.close();
  });
}
