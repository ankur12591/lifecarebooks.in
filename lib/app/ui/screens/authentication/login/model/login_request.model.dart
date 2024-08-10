import 'package:json_annotation/json_annotation.dart';

part 'login_request.model.g.dart';

@JsonSerializable()
class LoginRequest {
  String? email;
  String? password;
  List<String>? userType;

  LoginRequest({this.email, this.password, this.userType});

  factory LoginRequest.fromJson(Map<String, dynamic> json) {
    return _$LoginRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LoginRequestToJson(this);
  }
}



