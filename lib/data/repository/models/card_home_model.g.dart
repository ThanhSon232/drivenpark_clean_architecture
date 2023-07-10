// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardHomeModel _$$_CardHomeModelFromJson(Map<String, dynamic> json) =>
    _$_CardHomeModel(
      imageURL: json['imageURL'] as String?,
      addressName: json['addressName'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CardHomeModelToJson(_$_CardHomeModel instance) =>
    <String, dynamic>{
      'imageURL': instance.imageURL,
      'addressName': instance.addressName,
      'lat': instance.lat,
      'lon': instance.lon,
    };
