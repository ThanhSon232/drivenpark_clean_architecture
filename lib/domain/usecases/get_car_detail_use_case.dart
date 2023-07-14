import 'package:clean_architecture_app/domain/entities/car_detail_info.dart';
import 'package:clean_architecture_app/domain/repositories/business_repository.dart';
import 'package:dartz/dartz.dart';

import '../../shared/error/failure.dart';
import 'base/base_use_case.dart';

class GetCarDetailUseCase extends BaseUseCase<CarDetailInfo, int> {
  BusinessRepository repository;

  GetCarDetailUseCase(this.repository);

  @override
  Future<Either<Failure, CarDetailInfo>> call(int params) async {
    return await repository.selfCarDetail(params);
  }
}
