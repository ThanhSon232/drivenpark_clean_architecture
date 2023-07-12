import 'package:clean_architecture_app/data/repository/models/car_model.dart';
import 'package:clean_architecture_app/data/repository/models/request/search_request_model.dart';
import 'package:clean_architecture_app/shared/contants/url_constants.dart';
import 'package:dio/dio.dart';

abstract class BusinessAPIService{
  Future<List<CarModel>> selfSearch(SearchRequestModel params);
}

class BusinessAPIImp extends BusinessAPIService{
  final Dio dio;


  BusinessAPIImp(this.dio);

  @override
  Future<List<CarModel>> selfSearch(SearchRequestModel params) async {
    var response = await dio.post(URLConstants.selfSearch, data: params.toJson());


    if(response.statusCode == 200){
      List<CarModel> data = [];
      (response.data["data"] as List<dynamic>).forEach((element) {
        data.add(CarModel.fromJson(element));
      });
      return data;
    }
    throw DioException(requestOptions: response.requestOptions);
  }

}