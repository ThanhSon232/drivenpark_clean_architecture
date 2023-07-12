// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRequestModel _$SearchRequestModelFromJson(Map<String, dynamic> json) =>
    SearchRequestModel(
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      address: (json['address'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Object),
      ),
      pageNum: json['pageNum'] as int?,
      inRange: json['inRange'] as int?,
      price: json['price'] as int?,
      supportDelivery: json['supportDelivery'] as bool?,
      extendPrice: json['extendPrice'] as int?,
      gearType: json['gearType'] as String?,
      transmission: json['transmission'] as String?,
      fuelType: json['fuelType'] as String?,
      seat: json['seat'] as int?,
      carBrandId: json['carBrandId'] as int?,
      manufacturedYear: json['manufacturedYear'] as int?,
      rentWithDriver: json['rentWithDriver'] as bool?,
    );

Map<String, dynamic> _$SearchRequestModelToJson(SearchRequestModel instance) =>
    <String, dynamic>{
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'address': instance.address,
      'pageNum': instance.pageNum,
      'inRange': instance.inRange,
      'price': instance.price,
      'supportDelivery': instance.supportDelivery,
      'extendPrice': instance.extendPrice,
      'gearType': instance.gearType,
      'transmission': instance.transmission,
      'fuelType': instance.fuelType,
      'seat': instance.seat,
      'carBrandId': instance.carBrandId,
      'manufacturedYear': instance.manufacturedYear,
      'rentWithDriver': instance.rentWithDriver,
    };
