




import 'package:cloud_firestore/cloud_firestore.dart';

class UserModelFields{

  static const String username="User name";
  static const String email="Email";
  static const String password="Password";
  static const String uid="Uid";
}

class UserModel{
  String username;
  String email;
  String password;
  String uid;

  UserModel({
   required this.username,
   required this.email,
    required this.password,
    required this.uid
});

  Map<String,dynamic> toMap()=>{
    UserModelFields.username:username,
    UserModelFields.email:email,
    UserModelFields.password:password,
    UserModelFields.uid:uid
  };

  factory UserModel.fromJson(DocumentSnapshot json)=>UserModel(
      username: json[UserModelFields.username],
      email: json[UserModelFields.email],
      password: json[UserModelFields.password],
      uid: json[UserModelFields.uid]);

}