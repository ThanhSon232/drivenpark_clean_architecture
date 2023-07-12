import 'package:clean_architecture_app/data/repository/models/owner_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'car_model.freezed.dart';
part 'car_model.g.dart';
@freezed
class CarModel with _$CarModel{
  const factory CarModel({
     int? id,
     String? rowVersion ,
     String? type ,
     String? address ,
     String? status ,
     String? gearType ,
     String? fuelType ,
     int? seat ,
     int? manufacturedYear ,
     double? rating ,
     int? tripCount ,
     int? price ,
     String? imageURL ,
     String? carModel ,
     String? carBrand ,
     String? license ,
     bool? supportDelivery ,
     int? deliveryFee ,
     int? maxDeliveryDistance ,
     int? extendPrice ,
     int? maxExtendHours ,
     OwnerModel? owner ,
     String? plate ,
     bool? rentWithDriver ,
     String? exclude ,
     int? maxKm ,
     int? maxKmPrice ,
     bool? active ,
     double? distance ,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) => _$CarModelFromJson(json);
}