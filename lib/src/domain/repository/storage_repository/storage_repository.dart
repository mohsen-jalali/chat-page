import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';

abstract class StorageRepository {
  Future<String> uploadMedia({
    required Uint8List bytes,
    required Function(double progress) progressCallback,
    required String path,
    required String objectName,
    required CancelToken cancelToken,
    required String fileExtension,
  });

  Future<File> downloadMedia({
    required Function(double progress) progressCallback,
    required String objectName,
    required CancelToken cancelToken,
  });
}
