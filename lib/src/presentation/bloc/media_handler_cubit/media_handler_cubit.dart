import 'dart:async';
import 'dart:io';
import 'package:background_downloader/background_downloader.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/image_message_entity.dart';
import 'package:gamer_tag/src/domain/repository/storage_repository/storage_repository.dart';
import 'package:gamer_tag/src/presentation/bloc/general_cubit/event_cubit.dart';
import 'package:gamer_tag/src/presentation/bloc/media_handler_cubit/media_handler_event.dart';
import 'package:gamer_tag/src/presentation/bloc/media_handler_cubit/media_handler_state.dart';
import 'package:image_picker/image_picker.dart';

class MediaHandlerCubit
    extends EventCubit<MediaHandlerEvent, MediaHandlerState> {
  final StorageRepository storageRepository;

  MediaHandlerCubit({
    required this.storageRepository,
  }) : super(MediaHandlerInitState());

  Map<String, CancelToken> _uploadingCancelTokenMap = {};

  @override
  void onViewCreated() {
    FileDownloader().configureNotification(
        running: const TaskNotification('Downloading', 'file: {filename}'),
        complete:
            const TaskNotification('Download finished', 'file: {filename}'),
        progressBar: true);
  }

  Future<void> selectImage(BuildContext context) async {
    final imagePicker = ImagePicker();
    final xFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (xFile != null) {
      emitEvent(SelectedImageEvent(xFile));
    }
  }

  Future<void> uploadImage(ImageMessageEntity image) async {
    _uploadingCancelTokenMap.addEntries([MapEntry(image.id, CancelToken())]);
    emit(UploadMediaState.uploading(0.01, image.id));
    try {
      final response = await storageRepository.uploadMedia(
        bytes: File(image.url).readAsBytesSync(),
        objectName: image.objectName,
        fileExtension: image.extension,
        cancelToken: _uploadingCancelTokenMap[image.id]!,
        progressCallback: (progress) {
          emit(UploadMediaState.uploading(progress.toDouble(), image.id));
        },
        path: image.url,
      );
      emit(UploadMediaState.success(image.id, response));
      _uploadingCancelTokenMap.remove(image.id);
    } catch (e) {
      emit(UploadMediaState.failed(e.toString(), image.id));
    }
  }

  Future<void> download(ImageMessageEntity image) async {
    emit(DownloadMediaState.downloading(0.01, image.id));
    try {
      final downloadLink = await storageRepository.downloadMedia(
        objectName: image.objectName,
        cancelToken: CancelToken(),
        progressCallback: (progress) {
          emit(DownloadMediaState.downloading(progress, image.id));
        },
      );
      emit(DownloadMediaState.success(image.id));
    } catch (e) {
      emit(DownloadMediaState.failed(e.toString(), image.id));
    }
  }

  Future<void> cancelUpload(String id) async {
    _uploadingCancelTokenMap[id]?.cancel();
    _uploadingCancelTokenMap.remove(id);
    emit(UploadMediaState.failed("Upload Cancelled", id));
  }

  Future<void> cancelDownload(String objectName,String id) async {
    await FileDownloader().cancelTaskWithId(objectName);
    emit(DownloadMediaState.failed("Upload Cancelled", id));
  }
}
