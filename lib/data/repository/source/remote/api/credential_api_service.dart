import 'package:clean_architecture_app/shared/contants/server/server_error_constants.dart';
import 'package:dio/dio.dart';

import '../../../../../shared/contants/url_constants.dart';
import '../../../models/token_data.dart';

abstract class CredentialAPIServiceInterface {
  Future<TokenData> login(
      {required String emailOrPhone,
      required String password,
      String? firebaseRegistrationToken});

  Future<bool> generateOTP(
      {required bool sendSMS, String? email, String? phoneNumber});

  Future<bool> register({
    required String emailOrPhone,
    required String password,
    required String fullName,
    required String otp
  });
}
class CredentialAPIService implements CredentialAPIServiceInterface {
  final Dio _dio;

  CredentialAPIService(this._dio);

  @override
  Future<TokenData> login(
      {required String emailOrPhone,
      required String password,
      String? firebaseRegistrationToken}) async {
    var response = await _dio.post(URLConstants.loginPath, data: {
      'username': emailOrPhone,
      'password': password,
      'firebaseRegistrationToken': firebaseRegistrationToken
    });
    print(response);
   if(response.statusCode == ServerErrorConstants.success){
     return TokenData.fromJson(response.data);
   }
   throw DioException(requestOptions: response.requestOptions);
  }

  @override
  Future<bool> generateOTP({required bool sendSMS, String? email, String? phoneNumber}) async {
    var response = await _dio.post("${URLConstants.sendOTP}?sendSMS=$sendSMS", data: {
      'email': email,
      'phoneNumber': phoneNumber
    });
    if(response.statusCode == ServerErrorConstants.success){
      return true;
    }
    throw DioException(requestOptions: response.requestOptions);
  }

  @override
  Future<bool> register({required String emailOrPhone, required String password, required String fullName, required String otp}) async {
    var response = await _dio.post(URLConstants.registerPath, data: {
      'emailOrPhoneNumber': emailOrPhone,
      'password': password,
      'fullName': fullName,
      'otp': otp,
      'firebaseRegistrationToken': null
    });
    if(response.statusCode == ServerErrorConstants.success){
      return true;
    }
    throw DioException(requestOptions: response.requestOptions);
  }

}
