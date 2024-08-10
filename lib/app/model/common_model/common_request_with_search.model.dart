import 'package:json_annotation/json_annotation.dart';

part 'common_request_with_search.model.g.dart';

@JsonSerializable()
class CommonRequestWithSearch {

  String? search;
  String? sortBy;
  String? sortOrder;
  int? pageSize;
  int? page;

  CommonRequestWithSearch({
    this.search,
    this.sortBy,
    this.sortOrder = 'asc',
    this.pageSize = 10,
    this.page = 1,
  });

  factory CommonRequestWithSearch.fromJson(Map<String, dynamic> json) {
    return _$CommonRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CommonRequestToJson(this);
  }
}
