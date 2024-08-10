// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_search_request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectSearchRequestModel _$ProjectSearchRequestModelFromJson(
        Map<String, dynamic> json) =>
    ProjectSearchRequestModel(
      search: json['search'] as String?,
      sortField: json['sortField'] as String?,
      location: (json['location'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sortOrder: json['sortOrder'] as String?,
      engagementChoice: (json['engagementChoice'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      stylePreferences: (json['stylePreferences'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      colorPalette: (json['colorPalette'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      expertise: (json['expertise'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      moodAndAtmosphere: (json['moodAndAtmosphere'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ecoPreferences: (json['ecoPreferences'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      availability: json['availability'] as String?,
      budgetMinPrice: json['budgetMinPrice'] as String?,
      budgetMaxPrice: json['budgetMaxPrice'] as String?,
      minExperience: json['minExperience'] as String?,
      maxExperience: json['maxExperience'] as String?,
      minPrice: json['minPrice'] as String?,
      maxPrice: json['maxPrice'] as String?,
      filter: json['filter'] as String?,
      currency: json['currency'] as String?,
      itemsPerPage: json['itemsPerPage'] as int?,
      page: json['page'] as int?,
    );

Map<String, dynamic> _$ProjectSearchRequestModelToJson(
        ProjectSearchRequestModel instance) =>
    <String, dynamic>{
      'search': instance.search,
      'sortField': instance.sortField,
      'location': instance.location,
      'sortOrder': instance.sortOrder,
      'engagementChoice': instance.engagementChoice,
      'stylePreferences': instance.stylePreferences,
      'colorPalette': instance.colorPalette,
      'moodAndAtmosphere': instance.moodAndAtmosphere,
      'ecoPreferences': instance.ecoPreferences,
      'availability': instance.availability,
      'expertise': instance.expertise,
      'budgetMinPrice': instance.budgetMinPrice,
      'budgetMaxPrice': instance.budgetMaxPrice,
      'minExperience': instance.minExperience,
      'maxExperience': instance.maxExperience,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'filter': instance.filter,
      'currency': instance.currency,
      'itemsPerPage': instance.itemsPerPage,
      'page': instance.page,
    };

Map<String, dynamic> _$ProjectSearchRequestModelToJsonForPackage(
    ProjectSearchRequestModel instance) =>
    <String, dynamic>{
          'search': instance.search,
          'experties': instance.expertise,
          'sortField': instance.sortField,
          'location': instance.location,
          'sortOrder': instance.sortOrder,
          'style': instance.stylePreferences,
          'minExperience': instance.minExperience,
          'maxExperience': instance.maxExperience,
          'maxPrice': instance.maxPrice,
          'minPrice': instance.minPrice,
          'itemsPerPage': instance.itemsPerPage,
          'page': instance.page,
    };

Map<String, dynamic> _$ProjectSearchRequestModelToJsonForDesigner(
    ProjectSearchRequestModel instance) =>
    <String, dynamic>{
          'search': instance.search,
          'filter': instance.filter,
          'availability': instance.availability,
          'expertise': instance.expertise,
          'sortField': instance.sortField,
          'location': instance.location,
          'sortOrder': instance.sortOrder,
          'stylePreferences': instance.stylePreferences,
          'minExperience': instance.minExperience,
          'maxExperience': instance.maxExperience,
          'hourlyMaxPrice': instance.maxPrice,
          'hourlyMinPrice': instance.minPrice,
          'itemsPerPage': instance.itemsPerPage,
          'page': instance.page,
    };
