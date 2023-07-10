import 'package:clean_architecture_app/domain/repositories/credential_repository.dart';
import 'package:clean_architecture_app/domain/usecases/base/base_use_case.dart';
import 'package:clean_architecture_app/shared/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'generate_otp_use_case.freezed.dart';
class GenerateOTPUseCase implements BaseUseCase<bool, GenerateOTPInput>{
  final CredentialRepository repository;

  GenerateOTPUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(GenerateOTPInput params) {
    return repository.generateOTP(sendSMS: params.sendSMS, email: params.email, phoneNumber: params.phoneNumber);
  }

}

@freezed
class GenerateOTPInput with _$GenerateOTPInput{
  const factory GenerateOTPInput({
    String? email,
    String? phoneNumber,
    required bool sendSMS
  }) = _GenerateOTPInput;
}