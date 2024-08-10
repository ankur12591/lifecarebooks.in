import 'package:json_annotation/json_annotation.dart';

part 'common_request.model.g.dart';

@JsonSerializable()
class CommonRequest {

  String? sortBy;
  String? sortOrder;
  int? pageSize;
  int? page;

  CommonRequest({
    this.sortBy = "",
    this.sortOrder = 'asc',
    this.pageSize = 10,
    this.page = 1,
  });

  factory CommonRequest.fromJson(Map<String, dynamic> json) {
    return _$CommonRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CommonRequestToJson(this);
  }
}
