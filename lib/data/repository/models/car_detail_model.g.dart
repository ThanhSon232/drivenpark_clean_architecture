// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarDetailModel _$$_CarDetailModelFromJson(Map<String, dynamic> json) =>
    _$_CarDetailModel(
      id: json['id'] as int?,
      createdOn: json['createdOn'] as String?,
      type: json['type'] as String?,
      address: json['address'] == null
          ? null
          : CarLocationModel.fromJson(json['address'] as Map<String, dynamic>),
      status: json['status'] as String?,
      seat: json['seat'] as int?,
      manufacturedYear: json['manufacturedYear'] as int?,
      description: json['description'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      tripCount: json['tripCount'] as int?,
      features: json['features'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      carModel: json['carModel'] == null
          ? null
          : CarModelDetail.fromJson(json['carModel'] as Map<String, dynamic>),
      owner: json['owner'] == null
          ? null
          : OwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
      plate: json['plate'] as String?,
      transmission: json['transmission'] as String?,
      rentalRequirement: json['rentalRequirement'] as String?,
      rentalPolicy: json['rentalPolicy'] as String?,
      supportDelivery: json['supportDelivery'] as bool?,
      deliveryFee: (json['deliveryFee'] as num?)?.toDouble(),
      maxDeliveryDistance: json['maxDeliveryDistance'] as int?,
      extendPrice: (json['extendPrice'] as num?)?.toDouble(),
      maxExtendHours: json['maxExtendHours'] as int?,
      rentWithDriver: json['rentWithDriver'] as bool?,
      exclude: json['exclude'] as String?,
      maxKm: json['maxKm'] as int?,
      maxKmPrice: json['maxKmPrice'] as int?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_CarDetailModelToJson(_$_CarDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdOn': instance.createdOn,
      'type': instance.type,
      'address': instance.address,
      'status': instance.status,
      'seat': instance.seat,
      'manufacturedYear': instance.manufacturedYear,
      'description': instance.description,
      'rating': instance.rating,
      'tripCount': instance.tripCount,
      'features': instance.features,
      'price': instance.price,
      'images': instance.images,
      'carModel': instance.carModel,
      'owner': instance.owner,
      'plate': instance.plate,
      'transmission': instance.transmission,
      'rentalRequirement': instance.rentalRequirement,
      'rentalPolicy': instance.rentalPolicy,
      'supportDelivery': instance.supportDelivery,
      'deliveryFee': instance.deliveryFee,
      'maxDeliveryDistance': instance.maxDeliveryDistance,
      'extendPrice': instance.extendPrice,
      'maxExtendHours': instance.maxExtendHours,
      'rentWithDriver': instance.rentWithDriver,
      'exclude': instance.exclude,
      'maxKm': instance.maxKm,
      'maxKmPrice': instance.maxKmPrice,
      'active': instance.active,
    };
