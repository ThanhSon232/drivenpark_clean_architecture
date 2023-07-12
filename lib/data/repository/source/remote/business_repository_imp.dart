import 'package:clean_architecture_app/data/repository/mappers/car_mapper.dart';
import 'package:clean_architecture_app/data/repository/models/car_model.dart';
import 'package:clean_architecture_app/data/repository/models/request/search_request_model.dart';
import 'package:clean_architecture_app/data/repository/source/remote/api/business_api_service.dart';
import 'package:clean_architecture_app/domain/entities/car_basic_info.dart';

import 'package:clean_architecture_app/domain/usecases/self_search_use_case.dart';

import 'package:clean_architecture_app/shared/error/failure.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../domain/repositories/business_repository.dart';
import '../../models/base_data/error_response.dart';

class BusinessRepositoryImp extends BusinessRepository {
  BusinessAPIService businessAPIService;

  BusinessRepositoryImp(this.businessAPIService);

  @override
  Future<Either<Failure, List<CarBasicInfo>>> selfCarSearch(
      SearchRequestModel params) async {
    try {
      List<CarModel> data = await businessAPIService.selfSearch(params);
      List<CarBasicInfo> result = [];
      // data.forEach((element) {result.add(CarMapper().mapToListEntity(listData))})
      return Right(CarMapper().mapToListEntity(data));
    } on DioException catch (e) {
      ErrorResponse error = ErrorResponse.fromJson(e.response!.data);
      return Left(ServerFailure(error.Message!));
    }
  }
}
