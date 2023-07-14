import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_location_model.freezed.dart';
part 'car_location_model.g.dart';
@freezed
class CarLocationModel with _$CarLocationModel{
  const factory CarLocationModel({
    String? addressName,
    double? longitude,
    double? latitude,
    String? city,
    String? note,
  }) = _CarLocationModel;

  factory CarLocationModel.fromJson(Map<String, dynamic> json) => _$CarLocationModelFromJson(json);
}