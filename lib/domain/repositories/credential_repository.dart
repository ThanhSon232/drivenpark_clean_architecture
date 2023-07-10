import 'package:dartz/dartz.dart';

import '../../shared/error/failure.dart';

abstract class CredentialRepository {
  Future<Either<Failure, bool>> login(
      {required String emailOrPhone,
      required String password,
      String? firebaseRegistrationToken});

  Future<Either<Failure, bool>> generateOTP(
      {required bool sendSMS, String? email, String? phoneNumber});

  Future<Either<Failure, bool>> register({
    required String emailOrPhone,
    required String password,
    required String fullName,
    required String otp
});

}
