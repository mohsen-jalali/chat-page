import 'package:gamer_tag/src/domain/entities/message_entity/message_entity.dart';

class ImageMessageEntity extends MessageEntity {
  final String url;
  final double imageAspectRatio;

  const ImageMessageEntity({
    required this.url,
    required this.imageAspectRatio,
    required super.id,
    required super.senderId,
    required super.sentAt,
    super.expiresAt,
    super.messageType = MessageTypeEnum.image,
  });

  ImageMessageEntity copyWith({String? url}) {
    return ImageMessageEntity(
      url: url ?? this.url,
      imageAspectRatio: imageAspectRatio,
      id: id,
      senderId: senderId,
      sentAt: sentAt,
      expiresAt: expiresAt,
      messageType: MessageTypeEnum.image,
    );
  }

  String get objectName{
    return "$id.$extension";
  }

  String get extension{
    return url.split("/").last.split(".").last;
  }
}
