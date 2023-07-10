import 'dart:io';
import 'package:clean_architecture_app/data/repository/source/local/prefs/app_pref.dart';
import 'package:dio/dio.dart';
import 'package:package_info/package_info.dart';
import '../../../../../shared/contants/server/server_request_response_constants.dart';
import '../../local/app_storage.dart';

class HeaderInterceptor extends InterceptorsWrapper {
  AppPrefs appPrefs;


  HeaderInterceptor(this.appPrefs);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final userAgentValue = await userAgentClientHintsHeader();

    final token = await appPrefs.getToken();
    if (token?.isNotEmpty == true) {
      options.headers[ServerRequestResponseConstants.basicAuthorization] = '${ServerRequestResponseConstants.bearer} $token';
    }
    options.headers[ServerRequestResponseConstants.userAgentKey] = userAgentValue;

    handler.next(options);
  }

  Future<String> userAgentClientHintsHeader() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      return '${Platform.operatingSystem} - ${packageInfo.buildNumber}';
    } on Exception catch (_) {
      return 'The Platform not support get info';
    }
  }
}