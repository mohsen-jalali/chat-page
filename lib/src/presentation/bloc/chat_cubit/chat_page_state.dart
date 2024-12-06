import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/message_entity.dart';
import 'package:gamer_tag/src/domain/entities/user_entity/user_entity.dart';

part 'chat_page_state.freezed.dart';

abstract class ChatPageState {}

class ChatPageInitState extends ChatPageState {}

@freezed
class SendMessageState extends ChatPageState with _$SendMessageState {
  const factory SendMessageState.send(MessageEntity message) = SentMessageState;
}

@freezed
class SwitchTimerMessageState extends ChatPageState
    with _$SwitchTimerMessageState {
  const factory SwitchTimerMessageState.send(bool isTimerOn) =
      SwitchedTimerMessageState;
}

@freezed
class DeleteMessageState extends ChatPageState with _$DeleteMessageState {
  const factory DeleteMessageState.delete(
          int messageIndex, MessageEntity message, bool isManualRemove) =
      DeletedMessageState;
}

@freezed
class SwitchUsersState extends ChatPageState with _$SwitchUsersState {
  const factory SwitchUsersState.change(UserEntity user) =
  SwitchedUsersState;
}
