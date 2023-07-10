import 'package:clean_architecture_app/domain/entities/location.dart';
import 'package:clean_architecture_app/domain/repositories/location_repository.dart';
import 'package:dartz/dartz.dart';

import '../../shared/error/failure.dart';
import 'base/base_use_case.dart';

class SearchLocationUseCase extends BaseUseCase<List<SearchLocation>, String> {
  LocationRepository repository;

  SearchLocationUseCase(this.repository);

  @override
  Future<Either<Failure, List<SearchLocation>>> call(String params) async {
    return await repository.search(params);
  }
}
