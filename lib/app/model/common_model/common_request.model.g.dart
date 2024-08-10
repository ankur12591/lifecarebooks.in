// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonRequest _$CommonRequestFromJson(Map<String, dynamic> json) =>
    CommonRequest(
      sortBy: json['sortBy'] as String? ?? "",
      sortOrder: json['sortOrder'] as String? ?? 'asc',
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 10,
      page: (json['page'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$CommonRequestToJson(CommonRequest instance) =>
    <String, dynamic>{
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
      'pageSize': instance.pageSize,
      'page': instance.page,
    };
