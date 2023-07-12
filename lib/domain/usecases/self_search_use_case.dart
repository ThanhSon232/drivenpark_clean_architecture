import 'package:clean_architecture_app/data/repository/models/request/search_request_model.dart';
import 'package:clean_architecture_app/domain/entities/car_basic_info.dart';
import 'package:clean_architecture_app/domain/repositories/business_repository.dart';
import 'package:dartz/dartz.dart';

import '../../shared/error/failure.dart';
import 'base/base_use_case.dart';

class SelfSearchUseCase extends BaseUseCase<List<CarBasicInfo>, SearchRequestModel> {
  BusinessRepository repository;

  SelfSearchUseCase(this.repository);

  @override
  Future<Either<Failure, List<CarBasicInfo>>> call(SearchRequestModel params) async {
    return await repository.selfCarSearch(params);
  }
}