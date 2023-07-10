import 'package:clean_architecture_app/data/repository/models/search_location_model.dart';
import 'package:clean_architecture_app/domain/entities/location.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../domain/entities/token.dart';
import '../models/token_data.dart';
import 'base/base_data_mapper.dart';

class SearchLocationMapper extends BaseDataMapper<SearchLocationModel, SearchLocation> with DataMapperMixin{
  @override
  SearchLocation mapToEntity(SearchLocationModel? data) {
    return SearchLocation(
      address: data?.display_name ?? "",
      coordinate: LatLng(double.parse(data?.lat ?? "0"), double.parse(data?.lon ?? "0"))
    );
  }

  @override
  SearchLocationModel mapToData(SearchLocation entity) {
    return SearchLocationModel(
      lat: entity.coordinate.latitude.toString(),
      lon: entity.coordinate.latitude.toString(),
      display_name: entity.address
    );
  }


}