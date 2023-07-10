import 'package:clean_architecture_app/domain/entities/card_home.dart';
import 'package:dartz/dartz.dart';

import '../../shared/error/failure.dart';

abstract class LocalRepository {
  Future<Either<Failure, List<CardHome>>> getListCardHome();
}
