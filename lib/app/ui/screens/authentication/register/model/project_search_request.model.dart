import 'package:json_annotation/json_annotation.dart';

part 'project_search_request.model.g.dart';

@JsonSerializable()
class ProjectSearchRequestModel {
  String? search;
  String? sortField;
  List<String>? location;
  String? sortOrder;
  List<String>? engagementChoice;
  List<String>? stylePreferences;
  List<String>? colorPalette;
  List<String>? moodAndAtmosphere;
  List<String>? ecoPreferences;
  List<String>? expertise;
  String? budgetMinPrice;
  String? availability;
  String? budgetMaxPrice;
  String? minExperience;
  String? maxExperience;
  String? minPrice;
  String? maxPrice;
  String? filter;
  String? currency;
  int? itemsPerPage;
  int? page;

  ProjectSearchRequestModel({this.search,
    this.sortField,
    this.location,
    this.sortOrder,
    this.engagementChoice,
    this.stylePreferences,
    this.colorPalette,
    this.expertise,
    this.moodAndAtmosphere,
    this.ecoPreferences,
    this.availability,
    this.budgetMinPrice,
    this.budgetMaxPrice,
    this.minExperience,
    this.maxExperience,
    this.minPrice,
    this.maxPrice,
    this.filter,
    this.currency,
    this.itemsPerPage,
    this.page});

  factory ProjectSearchRequestModel.fromJson(Map<String, dynamic> json) {
    return _$ProjectSearchRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProjectSearchRequestModelToJson(this);
  }

  Map<String, dynamic> toJsonForPackage() {
    return _$ProjectSearchRequestModelToJsonForPackage(this);
  }
  Map<String, dynamic> toJsonForDesigner() {
    return _$ProjectSearchRequestModelToJsonForDesigner(this);
  }
}
