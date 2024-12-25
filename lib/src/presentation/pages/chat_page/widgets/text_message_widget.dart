import 'package:flutter/material.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/text_message_entity.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/text_widget.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';

class TextMessageWidget extends StatelessWidget {
  final TextMessageEntity message;
  final bool isAutoDelete;
  final bool isSender;

  const TextMessageWidget({
    super.key,
    required this.message,
    required this.isAutoDelete,
    required this.isSender,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidget.medium(
      message.text,
      context: context,
      additionalStyle: TextStyle(
        fontSize: 16,
        color: isAutoDelete
            ? context.colorScheme.surface
            : (isSender
                ? context.colorScheme.surface
                : context.colorScheme.tertiary),
      ),
      textAlign: TextAlign.left,
    );
  }
}
