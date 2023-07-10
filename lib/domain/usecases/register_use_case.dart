import 'package:clean_architecture_app/data/repository/source/remote/repository_impl.dart';
import 'package:clean_architecture_app/domain/repositories/credential_repository.dart';
import 'package:clean_architecture_app/domain/usecases/base/base_use_case.dart';
import 'package:clean_architecture_app/shared/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_use_case.freezed.dart';
class RegisterUseCase extends BaseUseCase<bool, RegisterInput>{
  CredentialRepository repository;

  RegisterUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(RegisterInput params) {
    return repository.register(emailOrPhone: params.emailOrPhoneNumber, password: params.password, fullName: params.fullName, otp: params.otp);
  }
}

@freezed
class RegisterInput with _$RegisterInput{
  const factory RegisterInput({
    required String fullName,
    required String password,
    required String emailOrPhoneNumber,
    required String otp,
    String? firebaseKey
  }) = _RegisterInput;
}