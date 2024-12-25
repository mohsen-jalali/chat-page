import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'media_handler_event.freezed.dart';

abstract class MediaHandlerEvent {}

@freezed
class SelectImageEvent extends MediaHandlerEvent with _$SelectImageEvent {
  const factory SelectImageEvent.selected(XFile media) = SelectedImageEvent;
}


