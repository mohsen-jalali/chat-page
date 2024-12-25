import 'package:equatable/equatable.dart';

enum MessageTypeEnum { text, image, unsupported }

abstract class MessageEntity extends Equatable {
  final String id;
  final String senderId;
  final DateTime sentAt;
  final MessageTypeEnum messageType;
  final DateTime? expiresAt;

  const MessageEntity({
    required this.id,
    required this.senderId,
    required this.sentAt,
    required this.expiresAt,
    required this.messageType,
  });

  @override
  List<Object?> get props => [
        id,
      ];

}
