import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/error/failure.dart';
import '../repositories/credential_repository.dart';
import 'base/base_use_case.dart';
part 'login_use_case.freezed.dart';

class LoginUseCase implements BaseUseCase<bool, LoginInput> {
  final CredentialRepository _credentialRepository;

  LoginUseCase(this._credentialRepository);

  @override
  Future<Either<Failure, bool>> call(LoginInput input) async{

    return await _credentialRepository.login(emailOrPhone: input.username,
        password: input.password,
        firebaseRegistrationToken: input.firebaseKey);
  }

}

@freezed
class LoginInput with _$LoginInput {
  const factory LoginInput({
    required String username,
    required String password,
    String? firebaseKey
  }) = _LoginInput;
}
