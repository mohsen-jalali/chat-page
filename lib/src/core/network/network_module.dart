import 'package:dio/dio.dart';
import 'package:gamer_tag/src/core/network/api_provider.dart';
import 'package:gamer_tag/src/core/network/dio/dio_api_provider_impl.dart';
import 'package:gamer_tag/src/core/network/dio/dio_wrapper.dart';
import 'package:kiwi/kiwi.dart';

class NetworkModule {
  static Future<void> inject() async {
    KiwiContainer()
        .registerFactory<ApiService>((container) => DioApiServiceImpl());

    KiwiContainer().registerSingleton<Dio>((container) => DioWrapper.provide());
  }
}