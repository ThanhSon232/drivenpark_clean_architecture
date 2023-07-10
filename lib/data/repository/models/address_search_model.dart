import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_search_model.freezed.dart';
part 'address_search_model.g.dart';
@freezed
class AddressSearchModel with _$AddressSearchModel{
  const factory AddressSearchModel({
    String? amenity,
    String? houseNumber,
    String? road,
    String? suburb,
    String? cityDistrict,
    String? city,
    String? iso31662Lvl4,
    String? postcode,
    String? country,
    String? countryCode
  }) = _AddressSearchModel;

  factory AddressSearchModel.fromJson(Map<String, dynamic> json) => _$AddressSearchModelFromJson(json);
}