import 'package:json_annotation/json_annotation.dart';

part 'country_request.model.g.dart';

@JsonSerializable()
class SearchRequestModel {
  String? search;
  String? sortField;
  String? sortOrder;
  int? itemsPerPage;
  int? page;


  SearchRequestModel({this.search,this.sortField,this.sortOrder,this.itemsPerPage,this.page,});

  factory SearchRequestModel.fromJson(Map<String, dynamic> json) {
    return _$SearchRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SearchRequestModelToJson(this);
  }
}
