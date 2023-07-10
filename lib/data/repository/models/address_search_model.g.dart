// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressSearchModel _$$_AddressSearchModelFromJson(
        Map<String, dynamic> json) =>
    _$_AddressSearchModel(
      amenity: json['amenity'] as String?,
      houseNumber: json['houseNumber'] as String?,
      road: json['road'] as String?,
      suburb: json['suburb'] as String?,
      cityDistrict: json['cityDistrict'] as String?,
      city: json['city'] as String?,
      iso31662Lvl4: json['iso31662Lvl4'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$$_AddressSearchModelToJson(
        _$_AddressSearchModel instance) =>
    <String, dynamic>{
      'amenity': instance.amenity,
      'houseNumber': instance.houseNumber,
      'road': instance.road,
      'suburb': instance.suburb,
      'cityDistrict': instance.cityDistrict,
      'city': instance.city,
      'iso31662Lvl4': instance.iso31662Lvl4,
      'postcode': instance.postcode,
      'country': instance.country,
      'countryCode': instance.countryCode,
    };
