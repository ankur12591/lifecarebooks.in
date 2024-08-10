import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request.model.g.dart';

@JsonSerializable()
class SignUpRequest {
  String? firstName;
  String? lastName;
  String? email;
  String? username;
  String? password;


  SignUpRequest({this.firstName,this.lastName,this.email,this.username,this.password,});

  factory SignUpRequest.fromJson(Map<String, dynamic> json) {
    return _$SignUpRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SignUpRequestToJson(this);
  }
}
