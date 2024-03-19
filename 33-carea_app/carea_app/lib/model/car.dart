
class Car{
  String brand;             // marka
  String model;             // model
  String year;              // yıl
  String color;             // renk
  bool isDamaged;           // hasarlı mı
  List<String> images;      // resimler
  String horsePower;        // beygir gücü
  String fuelType;          // yakıt tipi
  String transmission;      // vites
  String price;             // fiyat
  String location;          // konum
  String owner;             // sahip
  DateTime advertDate;      // ilan tarihi
  bool isUsed;              // kullanılmış mı
  String km;                // kilometre
  String engineCapacity;    // motor hacmi
  String wheelDrive;        // çekiş


Car({
   required this.brand,
   required this.model,
   required this.year,
   required this.color,
   required this.isDamaged,
   required this.images,
   required this.horsePower,
   required this.fuelType,
   required this.transmission,
   required this.price,
   required this.location,
   required this.owner,
   required this.advertDate,
   required this.isUsed,
   required this.km,
   required this.engineCapacity,
   required this.wheelDrive,
});
}