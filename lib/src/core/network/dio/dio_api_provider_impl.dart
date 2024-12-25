import 'package:dio/dio.dart';
import 'package:gamer_tag/src/core/network/api_provider.dart';
import 'package:kiwi/kiwi.dart';

class DioApiServiceImpl extends ApiService {
  @override
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? headerParameters,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<Response> download(
    String path,
    String savePath, {
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? headerParameters,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
  }) async {
    final dio = KiwiContainer().resolve<Dio>();

    if (headerParameters?.isNotEmpty == true) {
      dio.options.headers.addAll(headerParameters!);
    }

    return await dio.download(
      path,
      savePath,
      queryParameters: queryParameter,
      onReceiveProgress: onReceiveProgress,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<Response> patch(
    String path, {
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? headerParameters,
    dynamic bodyParameters,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<Response> post(
    String path, {
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? headerParameters,
    dynamic bodyParameters,
    ProgressCallback? onSendProgress,
    CancelToken? cancelToken,
  }) async {
    throw UnimplementedError();
  }

  @override
  Future<Response> put(
    String path, {
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? headerParameters,
    dynamic bodyParameters,
    ProgressCallback? onSendProgress,
    CancelToken? cancelToken,
  }) async {
    final dio = KiwiContainer().resolve<Dio>();
    if (headerParameters?.isNotEmpty == true) {
      dio.options.headers.addAll(headerParameters!);
    }
    return await dio.put(
      path,
      queryParameters: queryParameter,
      data: bodyParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
    );
  }

  @override
  Future<Response> delete(
    String path, {
    Map<String, dynamic>? queryParameter,
    Map<String, dynamic>? headerParameters,
    dynamic bodyParameters,
  }) async {
    throw UnimplementedError();
  }
}
