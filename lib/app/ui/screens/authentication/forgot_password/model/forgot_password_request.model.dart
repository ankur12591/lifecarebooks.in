import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_request.model.g.dart';

@JsonSerializable()
class ForgotPasswordRequest {
  String? email;

  ForgotPasswordRequest({this.email});

  factory ForgotPasswordRequest.fromJson(Map<String, dynamic> json) {
    return _$ForgotPasswordRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ForgotPasswordRequestToJson(this);
  }
}



