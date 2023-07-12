// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchLocationResponse _$$_SearchLocationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchLocationResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SearchLocationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchLocationResponseToJson(
        _$_SearchLocationResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
