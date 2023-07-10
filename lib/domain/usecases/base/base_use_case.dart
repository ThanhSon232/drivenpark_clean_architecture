import 'package:dartz/dartz.dart';

import '../../../shared/error/failure.dart';

abstract class BaseUseCase<Type, Params> {
  Future<Either<Failure,Type>> call(Params params);
}