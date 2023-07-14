import 'package:freezed_annotation/freezed_annotation.dart';

import 'car_brand_model.dart';

part 'car_model_detail.freezed.dart';
part 'car_model_detail.g.dart';
@freezed
class CarModelDetail with _$CarModelDetail{
  const factory CarModelDetail({
    int? id,
    CarBrandModel? carBrand,
    String? name
  }) = _CarModelDetail;

  factory CarModelDetail.fromJson(Map<String, dynamic> json) => _$CarModelDetailFromJson(json);
}