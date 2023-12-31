import 'package:clean_architecture_app/domain/entities/location.dart';
import 'package:clean_architecture_app/domain/entities/owner_basic_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'car_detail_info.freezed.dart';

@freezed
class CarDetailInfo with _$CarDetailInfo {
  const factory CarDetailInfo(
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
          @Default([])
          List<String> policies,
      @Default([])
          List<String> imageURL,
      @Default(SearchLocation(address: "", coordinate: LatLng(0, 0)))
          SearchLocation address,
      @Default(OwnerBasicInfo())
          OwnerBasicInfo owner,
      @Default("")
          String plate,
      @Default([])
          List<String> rentalRequirements,
      @Default([])
          List<String> features,
      @Default("")
          String manufacturedYear,
      @Default("")
          String seat,
      @Default("")
          String transmission,
      @Default("")
          String type

      }) = _CarDetailInfo;
}
