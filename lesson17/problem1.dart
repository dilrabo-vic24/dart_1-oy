import 'dart:isolate';

// Oshpaz (Isolate) uchun funksiya
void chefFunction(List<dynamic> args) {
  String order = args[0]; // Buyurtma nomi
  SendPort sendPort = args[1]; // Javobni yuborish porti

  // Buyurtmani tayyorlash (simulyatsiya)
  String preparedOrder = "$order tayyor!";

  // Javobni asosiy Isolate'ga yuborish
  sendPort.send(preparedOrder);
}

void main() {
  // 1. ReceivePort yaratamiz (javoblarni qabul qilish uchun)
  ReceivePort receivePort = ReceivePort();

  // 2. Buyurtma beramiz va oshpazni ishga tushiramiz
  String order = "Pizza"; // Buyurtma
  Isolate.spawn(chefFunction, [order, receivePort.sendPort]);

  // 3. Oshpazning javobini qabul qilamiz
  print("Buyurtma yuborildi: $order...");
  receivePort.listen((message) {
    print("Javob: $message"); // Oshpazning javobini chiqaramiz
    receivePort.close(); // Portni yopamiz
  });
}


// import 'dart:isolate';

// void sayHello(SendPort sendPort){
//   sendPort.send("Hello");
// }

// void main() {
//   ReceivePort receivePort = ReceivePort();

//   Isolate.spawn(sayHello, receivePort.sendPort);

//   receivePort.listen((message){
//     print("Xabar: $message");
//     receivePort.close();
//   });
// } 