import 'package:carea/model/advert.dart';

class UserInfo {
  String userFullName;
  String userId;
  String userDateOfBirth;
  String userEmail;
  String userContactNumber;
  String userGender;
  String userImage;
  List <Advert> advert;

  UserInfo(
    this.userFullName,
    this.userId,
    this.userDateOfBirth,
    this.userEmail,
    this.userContactNumber,
    this.userGender,
    this.userImage,
    this.advert,
  );
}
