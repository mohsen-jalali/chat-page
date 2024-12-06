import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_entity.freezed.dart';

@unfreezed
class MessageEntity extends Equatable with _$MessageEntity {
  const MessageEntity._();

  factory MessageEntity({
    required String id,
    required String text,
    required String senderId,
    required DateTime sentAt,
    DateTime? expiresAt,
  }) = _MessageEntity;

  @override
  List<Object?> get props => [
        id,
      ];
}
