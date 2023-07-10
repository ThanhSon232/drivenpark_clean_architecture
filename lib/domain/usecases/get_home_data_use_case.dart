import 'package:clean_architecture_app/domain/entities/card_home.dart';
import 'package:clean_architecture_app/domain/repositories/local_repository.dart';
import 'package:clean_architecture_app/domain/usecases/base/base_use_case.dart';
import 'package:clean_architecture_app/domain/usecases/base/base_use_case_no_params.dart';
import 'package:clean_architecture_app/shared/error/failure.dart';
import 'package:dartz/dartz.dart';

class GetHomeDataUseCase extends BaseUseCaseNoParams<Either<Failure, List<CardHome>>>{
  final LocalRepository _localRepository;


  GetHomeDataUseCase(this._localRepository);

  @override
  Future<Either<Failure,List<CardHome>>> call() async{
    return await _localRepository.getListCardHome();
  }

}