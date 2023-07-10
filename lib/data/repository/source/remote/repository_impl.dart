import 'package:clean_architecture_app/data/repository/models/base_data/error_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../domain/repositories/credential_repository.dart';
import '../../../../shared/error/failure.dart';
import '../../models/token_data.dart';
import 'api/credential_api_service.dart';

class RepositoryImpl implements CredentialRepository{
  RepositoryImpl(this._credentialAPIService);
  final CredentialAPIService _credentialAPIService;

  @override
  Future<Either<Failure, bool>> login({required String emailOrPhone, required String password, String? firebaseRegistrationToken}) async {
    try{
      TokenData response = await _credentialAPIService.login(emailOrPhone: emailOrPhone, password: password, firebaseRegistrationToken: firebaseRegistrationToken);
      
      return const Right(true);
    }
    on DioException catch (error){
      ErrorResponse e = ErrorResponse.fromJson(error.response!.data);
      return Left(ServerFailure(e.Message ?? ""));
    }
  }

  @override
  Future<Either<Failure, bool>> generateOTP({required bool sendSMS, String? email, String? phoneNumber}) async{
    try{
      bool response = await _credentialAPIService.generateOTP(sendSMS: sendSMS, email: email, phoneNumber: phoneNumber);
      return Right(response);
    }
    on DioException catch (error){
      ErrorResponse e = ErrorResponse.fromJson(error.response!.data);
      return Left(ServerFailure(e.Message ?? ""));
    }
  }

  @override
  Future<Either<Failure, bool>> register({required String emailOrPhone, required String password, required String fullName, required String otp}) async{
    try{
      bool response = await _credentialAPIService.register(emailOrPhone: emailOrPhone, password: password, fullName: fullName, otp: otp);
      return Right(response);
    }
    on DioException catch (error){
      ErrorResponse e = ErrorResponse.fromJson(error.response!.data);
      return Left(ServerFailure(e.Message ?? ""));
    }
  }
  
  
}