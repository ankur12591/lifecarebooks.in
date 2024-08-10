class SignUpResponseModel {
  final String objectId;
  final String createdAt;
  final String sessionToken;

  SignUpResponseModel({
    required this.objectId,
    required this.createdAt,
    required this.sessionToken,
  });

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) {
    return SignUpResponseModel(
      objectId: json['objectId'],
      createdAt: json['createdAt'],
      sessionToken: json['sessionToken'],
    );
  }
}
