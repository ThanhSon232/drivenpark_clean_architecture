import 'package:clean_architecture_app/data/repository/source/remote/api/search_api_service.dart';
import 'package:clean_architecture_app/domain/entities/location.dart';
import 'package:clean_architecture_app/domain/repositories/local_repository.dart';
import 'package:clean_architecture_app/domain/repositories/location_repository.dart';
import 'package:clean_architecture_app/shared/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../models/base_data/error_response.dart';

class LocationRepositoryImp extends LocationRepository{
  SearchAPIService searchAPIService;


  LocationRepositoryImp(this.searchAPIService);

  @override
  Future<Either<Failure, List<SearchLocation>>> search(String address) async{
    try{
      return Right(await searchAPIService.search(address));
    }on DioException catch(error){
      ErrorResponse e = ErrorResponse.fromJson(error.response!.data);
      return Left(ServerFailure(e.Message ?? ""));
    }
  }
}