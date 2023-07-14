import 'package:clean_architecture_app/data/repository/models/car_location_model.dart';
import 'package:clean_architecture_app/data/repository/models/image_model.dart';
import 'package:clean_architecture_app/data/repository/models/owner_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'car_model_detail.dart';

part 'car_detail_model.freezed.dart';
part 'car_detail_model.g.dart';
@freezed
class CarDetailModel with _$CarDetailModel{
  const factory CarDetailModel({
    int? id,
    String? createdOn,
    String? type,
    CarLocationModel? address,
    String? status,
    int? seat,
    int? manufacturedYear,
    String? description,
    double? rating,
    int? tripCount,
    String? features,
    double? price,
    List<ImageModel>? images,
    CarModelDetail? carModel,
    OwnerModel? owner,
    String? plate,
    String? transmission,
    String? rentalRequirement,
    String? rentalPolicy,
    bool? supportDelivery,
    double? deliveryFee,
    int? maxDeliveryDistance,
    double? extendPrice,
    int? maxExtendHours,
    bool? rentWithDriver,
    String? exclude,
    int? maxKm,
    int? maxKmPrice,
    bool? active,
  }) = _CarDetailModel;

  factory CarDetailModel.fromJson(Map<String, dynamic> json) => _$CarDetailModelFromJson(json);
}