// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarModel _$$_CarModelFromJson(Map<String, dynamic> json) => _$_CarModel(
      id: json['id'] as int?,
      rowVersion: json['rowVersion'] as String?,
      type: json['type'] as String?,
      address: json['address'] as String?,
      status: json['status'] as String?,
      gearType: json['gearType'] as String?,
      fuelType: json['fuelType'] as String?,
      seat: json['seat'] as int?,
      manufacturedYear: json['manufacturedYear'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      tripCount: json['tripCount'] as int?,
      price: json['price'] as int?,
      imageURL: json['imageURL'] as String?,
      carModel: json['carModel'] as String?,
      carBrand: json['carBrand'] as String?,
      license: json['license'] as String?,
      supportDelivery: json['supportDelivery'] as bool?,
      deliveryFee: json['deliveryFee'] as int?,
      maxDeliveryDistance: json['maxDeliveryDistance'] as int?,
      extendPrice: json['extendPrice'] as int?,
      maxExtendHours: json['maxExtendHours'] as int?,
      owner: json['owner'] == null
          ? null
          : OwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
      plate: json['plate'] as String?,
      rentWithDriver: json['rentWithDriver'] as bool?,
      exclude: json['exclude'] as String?,
      maxKm: json['maxKm'] as int?,
      maxKmPrice: json['maxKmPrice'] as int?,
      active: json['active'] as bool?,
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CarModelToJson(_$_CarModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rowVersion': instance.rowVersion,
      'type': instance.type,
      'address': instance.address,
      'status': instance.status,
      'gearType': instance.gearType,
      'fuelType': instance.fuelType,
      'seat': instance.seat,
      'manufacturedYear': instance.manufacturedYear,
      'rating': instance.rating,
      'tripCount': instance.tripCount,
      'price': instance.price,
      'imageURL': instance.imageURL,
      'carModel': instance.carModel,
      'carBrand': instance.carBrand,
      'license': instance.license,
      'supportDelivery': instance.supportDelivery,
      'deliveryFee': instance.deliveryFee,
      'maxDeliveryDistance': instance.maxDeliveryDistance,
      'extendPrice': instance.extendPrice,
      'maxExtendHours': instance.maxExtendHours,
      'owner': instance.owner,
      'plate': instance.plate,
      'rentWithDriver': instance.rentWithDriver,
      'exclude': instance.exclude,
      'maxKm': instance.maxKm,
      'maxKmPrice': instance.maxKmPrice,
      'active': instance.active,
      'distance': instance.distance,
    };
