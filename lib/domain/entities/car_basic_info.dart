import 'package:clean_architecture_app/domain/entities/location.dart';
import 'package:clean_architecture_app/domain/entities/owner_basic_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'car_basic_info.freezed.dart';

@freezed
class CarBasicInfo with _$CarBasicInfo {
  const factory CarBasicInfo(
      {@Default(0)
          int id,
      @Default("Anonymous")
          String carName,
      @Default("")
          String price,
      @Default("")
          String rating,
      @Default(false)
          bool supportDelivery,
      @Default("Anonymous")
          String imageURL,
      @Default(SearchLocation(address: "", coordinate: LatLng(0, 0)))
          SearchLocation address,
      @Default(OwnerBasicInfo())
          OwnerBasicInfo owner}) = _CarBasicInfo;
}
