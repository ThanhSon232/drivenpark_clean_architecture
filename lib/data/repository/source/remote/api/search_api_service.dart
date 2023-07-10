import 'package:clean_architecture_app/data/repository/mappers/search_location_mapper.dart';
import 'package:clean_architecture_app/data/repository/models/search_location_model.dart';
import 'package:clean_architecture_app/domain/entities/location.dart';
import 'package:clean_architecture_app/shared/contants/search_url_constants.dart';
import 'package:dio/dio.dart';

abstract class SearchAPIService {
  Future<List<SearchLocation>> search(String address);
}

class SearchAPIImp extends SearchAPIService {
  Dio dio;

  SearchAPIImp(this.dio);

  @override
  Future<List<SearchLocation>> search(String address) async {
    final result = await dio.get(
        "${SearchURLConstants.apiSearch}?q=$address&addressdetails=addressdetails&format=json&language=vi");
    print(result);
    List<SearchLocationModel> rawData= [];
    for(int i = 0 ; i < result.data.length; i ++){
      rawData.add(SearchLocationModel.fromJson(result.data[i]));
    }
    List<SearchLocation> data = rawData
        .map((item) => SearchLocationMapper().mapToEntity(item))
        .toList();
    return data;
  }
}
