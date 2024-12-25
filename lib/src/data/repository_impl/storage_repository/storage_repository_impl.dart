import 'dart:io';
import 'dart:typed_data';
import 'package:background_downloader/background_downloader.dart';
import 'package:dio/dio.dart';
import 'package:gamer_tag/src/core/environment/environment_handler.dart';
import 'package:gamer_tag/src/core/exception/custom_exceptions.dart';
import 'package:gamer_tag/src/core/network/api_provider.dart';
import 'package:gamer_tag/src/domain/repository/storage_repository/storage_repository.dart';
import 'package:path_provider/path_provider.dart';
import 'package:s3_storage/s3_storage.dart';

class StorageRepositoryImpl extends StorageRepository {
  final ApiService apiService;

  StorageRepositoryImpl({
    required this.apiService,
  });

  final _storage = S3Storage(
    endPoint: EnvironmentHandler.endpoint,
    accessKey: EnvironmentHandler.accessKey,
    secretKey: EnvironmentHandler.secretKey,
  );

  @override
  Future<String> uploadMedia({
    required Uint8List bytes,
    required Function(double progress) progressCallback,
    required String path,
    required String objectName,
    required String fileExtension,
    required CancelToken cancelToken,
  }) async {
    File file = File(path);
    final url = await _storage.presignedPutObject(
        EnvironmentHandler.bucketName, objectName);
    final response = await apiService.put(
      url,
      cancelToken: cancelToken,
      bodyParameters: bytes,
      headerParameters: {
        "Content-Type": "image/$fileExtension",
      },
      onSendProgress: (count, total) {
        progressCallback.call(count / total);
      },
    );
    return response.data;
  }

  @override
  Future<File> downloadMedia({
    required Function(double progress) progressCallback,
    required String objectName,
    required CancelToken cancelToken,
  }) async {
    final url = await _storage.presignedGetObject(
        EnvironmentHandler.bucketName, objectName);
    final Directory tempDir = await getTemporaryDirectory();
    final task = DownloadTask(
      url: url,
      taskId: objectName,
      filename: objectName,
      directory: "${tempDir.path}/$objectName",
      updates: Updates.statusAndProgress,
      requiresWiFi: false,
      retries: 0,
    );
    final result = await FileDownloader().download(
      task,
      onProgress: (progress) => progressCallback.call(progress),
      onStatus: (status) => print('Status: $status'),
    );

    switch (result.status) {
      case TaskStatus.failed:
        throw FailedException(message: result.responseBody ?? "");
      case TaskStatus.canceled:
        throw CancelledException();
      case TaskStatus.notFound:
        throw NotFoundException();
      default:
    }

    return File(objectName);
  }
}
