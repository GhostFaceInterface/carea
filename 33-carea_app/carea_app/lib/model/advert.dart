import 'package:carea/model/car.dart';
import 'package:carea/model/user_info.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Advert {
  String advertId;
  String title;
  String info;
  Car car;
  UserInfo user; 
  LatLng location; // Google maps Lokasyon değişkeni
  String description;


  Advert({
  required this.advertId,  
  required this.title,
  required this.info,
  required this.car,
  required this.user,
  required this.location,
  required this.description,
});}

