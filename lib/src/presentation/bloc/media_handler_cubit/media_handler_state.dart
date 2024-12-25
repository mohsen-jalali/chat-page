import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_handler_state.freezed.dart';

abstract class MediaHandlerState {}

class MediaHandlerInitState extends MediaHandlerState {}

@freezed
class UploadMediaState extends MediaHandlerState with _$UploadMediaState {
  const factory UploadMediaState.uploading(double progress,String id) = UploadingMediaState;
  const factory UploadMediaState.success(String id,String url) = SuccessUploadState;
  const factory UploadMediaState.failed(String? message,String id) = FailedUploadState;
}

@freezed
class DownloadMediaState extends MediaHandlerState with _$DownloadMediaState {
  const factory DownloadMediaState.downloading(double progress,String id) = DownloadingMediaState;
  const factory DownloadMediaState.success(String id) = SuccessDownloadMediaState;
  const factory DownloadMediaState.failed(String? message,String id) = FailedDownloadMediaState;
}
