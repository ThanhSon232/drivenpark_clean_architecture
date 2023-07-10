// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchLocationModel _$$_SearchLocationModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchLocationModel(
      placeId: json['placeId'] as int?,
      licence: json['licence'] as String?,
      osmType: json['osmType'] as String?,
      osmId: json['osmId'] as int?,
      boundingbox: (json['boundingbox'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lat: json['lat'] as String?,
      lon: json['lon'] as String?,
      display_name: json['display_name'] as String?,
      temperatureClass: json['temperatureClass'] as String?,
      type: json['type'] as String?,
      importance: (json['importance'] as num?)?.toDouble(),
      icon: json['icon'] as String?,
      address: json['address'] == null
          ? null
          : AddressSearchModel.fromJson(
              json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchLocationModelToJson(
        _$_SearchLocationModel instance) =>
    <String, dynamic>{
      'placeId': instance.placeId,
      'licence': instance.licence,
      'osmType': instance.osmType,
      'osmId': instance.osmId,
      'boundingbox': instance.boundingbox,
      'lat': instance.lat,
      'lon': instance.lon,
      'display_name': instance.display_name,
      'temperatureClass': instance.temperatureClass,
      'type': instance.type,
      'importance': instance.importance,
      'icon': instance.icon,
      'address': instance.address,
    };
