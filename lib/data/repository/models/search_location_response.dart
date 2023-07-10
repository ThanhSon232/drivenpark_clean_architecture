import 'package:clean_architecture_app/data/repository/models/search_location_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_search_model.dart';

part 'search_location_response.freezed.dart';
part 'search_location_response.g.dart';
@freezed
class SearchLocationResponse with _$SearchLocationResponse{
  const factory SearchLocationResponse({
    List<SearchLocationModel>? data
  }) = _SearchLocationResponse;

  factory SearchLocationResponse.fromJson(Map<String, dynamic> json) => _$SearchLocationResponseFromJson(json);
}