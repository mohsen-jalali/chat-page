import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/image_message_entity.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/animation_circular_progress_indicator.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/icon_widget.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';

class ImageLoadingWidget extends StatelessWidget {
  final ImageMessageEntity imageMessage;
  final double progress;
  final VoidCallback onCancel;

  const ImageLoadingWidget({
    super.key,
    required this.imageMessage,
    required this.progress,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.file(
          File(imageMessage.url),
          fit: BoxFit.contain,
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              color: Colors.black.withOpacity(0.6), // Optional overlay color
            ),
          ),
        ),
        Center(
          child: AnimationCircularProgressIndicator(
            value: progress,
          ),
        ),
        Center(
          child: IconWidget(
            icon: Icons.close,
            iconColor: context.colorScheme.surface,
            height: 32,
            width: 32,
            padding: 6,
            onPressed: onCancel,
          ),
        )
      ],
    );
  }
}
