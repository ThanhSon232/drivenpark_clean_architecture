import 'package:clean_architecture_app/data/repository/source/local/prefs/app_pref.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import '../../../../../shared/contants/server/server_request_response_constants.dart';
import '../../../../../shared/contants/server/server_timeout_constants.dart';
import '../../../../../shared/contants/url_constants.dart';
import '../interceptor/header_interceptor.dart';
import '../interceptor/token_interceptor.dart';

class DioBuilder extends DioMixin implements Dio {
  static DioBuilder getInstance(
      {bool ignoredToken = false, BaseOptions? options}) =>
      DioBuilder._(ignoredToken, options);

  DioBuilder._(bool ignoredToken, [BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: options?.baseUrl ?? URLConstants.baseURL,
      contentType: ServerRequestResponseConstants.contentType,
      connectTimeout: const Duration(milliseconds: ServerTimeoutConstants.connectTimeoutInMs),
      receiveTimeout: const Duration(milliseconds: ServerTimeoutConstants.receiveTimeoutInMs),
      sendTimeout: const Duration(milliseconds: ServerTimeoutConstants.sendTimeoutInMs),
    );

    this.options = options;

    // Config cache
    // final cacheConfig = CacheConfig(baseUrl: Constants.shared().endpoint);
    // interceptors.add(DioCacheManager(cacheConfig).interceptor as InterceptorsWrapper);

    // Debug mode
    if (kDebugMode) {
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }

    // Add default user agent
    interceptors.add(HeaderInterceptor(GetIt.instance.get<AppPrefs>()));

    // token
    if (!ignoredToken) {
      interceptors.add(TokenInterceptor(currentDio: this));
    }

    // create default http client
    // If you want run for web, please use httpClientAdapter from BrowserHttpClientAdapter
    // if (kIsWeb) {
    //   httpClientAdapter = BrowserHttpClientAdapter();
    // }
    httpClientAdapter = IOHttpClientAdapter();
  }
}