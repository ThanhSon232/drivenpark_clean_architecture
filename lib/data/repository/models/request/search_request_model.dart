import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'search_request_model.g.dart';

@JsonSerializable()
class SearchRequestModel {
  DateTime? startTime;
  DateTime? endTime;
  Map<String, Object>? address;
  int? pageNum;
  int? inRange;
  int? price;
  bool? supportDelivery;
  int? extendPrice;
  String? gearType;
  String? transmission;
  String? fuelType;
  int? seat;
  int? carBrandId;
  int? manufacturedYear;
  bool? rentWithDriver;

  SearchRequestModel(
      {required this.startTime,
      required this.endTime,
      required this.address,
      required this.pageNum,
      this.inRange,
      this.price,
      this.supportDelivery,
      this.extendPrice,
      this.gearType,
      this.transmission,
      this.fuelType,
      this.seat,
      this.carBrandId,
      this.manufacturedYear,
      this.rentWithDriver});

  Map<String, dynamic> toJson() => _$SearchRequestModelToJson(this);
}
