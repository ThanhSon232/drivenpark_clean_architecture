import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'address_search_model.dart';

part 'search_location_model.freezed.dart';
part 'search_location_model.g.dart';
@freezed
class SearchLocationModel with _$SearchLocationModel{

  const factory SearchLocationModel({
    int? placeId,
    String? licence,
    String? osmType,
    int? osmId,
    List<String>? boundingbox,
    String? lat,
    String? lon,
    String? display_name,
    String? temperatureClass,
    String? type,
    double? importance,
    String? icon,
    AddressSearchModel? address
  }) = _SearchLocationModel;

  factory SearchLocationModel.fromJson(Map<String, dynamic> json) => _$SearchLocationModelFromJson(json);
}