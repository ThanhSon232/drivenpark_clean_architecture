import 'package:dio/dio.dart';

import '../../../../../shared/contants/server/server_request_response_constants.dart';
import '../../../../../shared/contants/url_constants.dart';
import '../builder/dio_builder.dart';

class TokenInterceptor extends QueuedInterceptor {
  final Dio currentDio;
  TokenInterceptor({required this.currentDio});

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response != null && err.response?.statusCode == 401) {
      // TODO Please refactor when token api ready

      /// Step 1: Get current token from request
      /// Step 2: Compare with token from storage
      /// Step 3.1: If different, recall request with token from storage
      /// Step 3.2: If same, refresh token

      const tokenFromRequest = '';
      const tokenFromStorage = '';
      String token = tokenFromStorage;

      if (tokenFromRequest != tokenFromStorage) {
        token = await requestToken();
      }

      // Re-call request
      final request = err.requestOptions;
      try {
        // Check header has Authentication
        if (request.headers.containsKey(ServerRequestResponseConstants.basicAuthorization)) {
          // Update the last value
          request.headers.update(ServerRequestResponseConstants.basicAuthorization,
                  (value) => (value.toString().contains(ServerRequestResponseConstants.bearer) == true) ? '${ServerRequestResponseConstants.bearer} $token' : token);
        }

        final response = await currentDio.request(
          request.path,
          data: request.data,
          queryParameters: request.queryParameters,
          cancelToken: request.cancelToken,
          options: Options(
              method: request.method,
              sendTimeout: request.sendTimeout,
              extra: request.extra,
              headers: request.headers,
              responseType: request.responseType,
              contentType: request.contentType,
              receiveDataWhenStatusError: request.receiveDataWhenStatusError,
              followRedirects: request.followRedirects,
              maxRedirects: request.maxRedirects,
              requestEncoder: request.requestEncoder,
              responseDecoder: request.responseDecoder,
              listFormat: request.listFormat
          ),
          onReceiveProgress: request.onReceiveProgress,
        );

        handler.resolve(response);
      } on DioException catch (e) {
        handler.next(e);
      }
    }

    super.onError(err, handler);
  }

  Future<String> requestToken() async {
    final dio = DioBuilder.getInstance(ignoredToken: true, options: BaseOptions(baseUrl: URLConstants.baseURL));
    try {
      // final userApi = UserApi(dio);
      // userApi.refreshToken(const UserDataModel(username: 'example', password: 'example'));
    } on Exception catch (e) {
      return Future.error(e);
    }
    return 'token';
  }
}