// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarLocationModel _$$_CarLocationModelFromJson(Map<String, dynamic> json) =>
    _$_CarLocationModel(
      addressName: json['addressName'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      city: json['city'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$_CarLocationModelToJson(_$_CarLocationModel instance) =>
    <String, dynamic>{
      'addressName': instance.addressName,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'city': instance.city,
      'note': instance.note,
    };
