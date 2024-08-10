// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_request_with_search.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonRequestWithSearch _$CommonRequestFromJson(Map<String, dynamic> json) =>
    CommonRequestWithSearch(
      search: json['search'] as String? ?? '',
      sortBy: json['sortBy'] as String? ?? '',
      sortOrder: json['sortOrder'] as String? ?? 'asc',
      pageSize: json['pageSize'] as int? ?? 10,
      page: json['page'] as int? ?? 1,
    );

Map<String, dynamic> _$CommonRequestToJson(
        CommonRequestWithSearch instance) =>
    <String, dynamic>{
      'search': instance.search,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
      'pageSize': instance.pageSize,
      'page': instance.page,
    };
