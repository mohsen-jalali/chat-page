import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/message_entity.dart';

class TextMessageEntity extends MessageEntity {
  final String text;

  const TextMessageEntity({
    required this.text,
    required super.id,
    required super.senderId,
    required super.sentAt,
    super.expiresAt,
    super.messageType = MessageTypeEnum.text,
  });
}
