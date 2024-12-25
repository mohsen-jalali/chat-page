import 'dart:io';
import 'package:dio/dio.dart';

class DioWrapper {
  static Dio provide() {
    final dio = Dio();
    dio.interceptors.add(_getResponseInterceptor());
    return dio;
  }

  static QueuedInterceptor _getResponseInterceptor() {
    return QueuedInterceptorsWrapper(
      onRequest: _onRequest,
      onResponse: _onResponse,
      onError: _onError,
    );
  }

  static void _onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {

    return handler.next(options);
  }

  static void _onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    return handler.next(response);
  }

  static void _onError(
      DioException options, ErrorInterceptorHandler handler) async {
    if (options.error is SocketException) {
      handler.reject(DioException(requestOptions: options.requestOptions));
    }
  }
}