import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
part 'location.freezed.dart';

@freezed
class SearchLocation with _$SearchLocation{
  const factory SearchLocation({@Default('') String address, @Default(LatLng(0, 0)) LatLng coordinate}) = _SearchLocation;
}