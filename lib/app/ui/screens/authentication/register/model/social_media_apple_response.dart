// To parse this JSON data, do
//
//     final socialMediaAppleRequest = socialMediaAppleRequestFromJson(jsonString);

import 'dart:convert';

SocialMediaAppleRequest socialMediaAppleRequestFromJson(String str) => SocialMediaAppleRequest.fromJson(json.decode(str));

String socialMediaAppleRequestToJson(SocialMediaAppleRequest data) => json.encode(data.toJson());

class SocialMediaAppleRequest {
  Authorization authorization;
  User user;
  String loginBy;
  String userType;

  SocialMediaAppleRequest({
    required this.authorization,
    required this.user,
    required this.loginBy,
    required this.userType,
  });

  factory SocialMediaAppleRequest.fromJson(Map<String, dynamic> json) => SocialMediaAppleRequest(
    authorization: Authorization.fromJson(json["authorization"]),
    user: User.fromJson(json["user"]),
    loginBy: json["loginBy"],
    userType: json["userType"],
  );

  Map<String, dynamic> toJson() => {
    "authorization": authorization.toJson(),
    "user": user.toJson(),
    "loginBy": loginBy,
    "userType": userType,
  };
}

class Authorization {
  String code;
  String idToken;
  String state;

  Authorization({
    required this.code,
    required this.idToken,
    required this.state,
  });

  factory Authorization.fromJson(Map<String, dynamic> json) => Authorization(
    code: json["code"],
    idToken: json["id_token"],
    state: json["state"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "id_token": idToken,
    "state": state,
  };
}

class User {
  Name name;
  String email;

  User({
    required this.name,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: Name.fromJson(json["name"]),
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "name": name.toJson(),
    "email": email,
  };
}

class Name {
  String firstName;
  String lastName;

  Name({
    required this.firstName,
    required this.lastName,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    firstName: json["firstName"],
    lastName: json["lastName"],
  );

  Map<String, dynamic> toJson() => {
    "firstName": firstName,
    "lastName": lastName,
  };
}
