// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarModelDetail _$$_CarModelDetailFromJson(Map<String, dynamic> json) =>
    _$_CarModelDetail(
      id: json['id'] as int?,
      carBrand: json['carBrand'] == null
          ? null
          : CarBrandModel.fromJson(json['carBrand'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CarModelDetailToJson(_$_CarModelDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'carBrand': instance.carBrand,
      'name': instance.name,
    };
