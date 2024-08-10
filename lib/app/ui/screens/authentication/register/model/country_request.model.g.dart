// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRequestModel _$SearchRequestModelFromJson(Map<String, dynamic> json) =>
    SearchRequestModel(
      search: json['search'] as String?,
      sortField: json['sortField'] as String?,
      sortOrder: json['sortOrder'] as String?,
      itemsPerPage: json['itemsPerPage'] as int?,
      page: json['page'] as int?,
    );

Map<String, dynamic> _$SearchRequestModelToJson(SearchRequestModel instance) =>
    <String, dynamic>{
      'search': instance.search,
      'sortField': instance.sortField,
      'sortOrder': instance.sortOrder,
      'itemsPerPage': instance.itemsPerPage,
      'page': instance.page,
    };
