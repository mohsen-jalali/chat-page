import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/image_message_entity.dart';
import 'package:gamer_tag/src/presentation/bloc/media_handler_cubit/media_handler_cubit.dart';
import 'package:gamer_tag/src/presentation/bloc/media_handler_cubit/media_handler_state.dart';
import 'package:gamer_tag/src/presentation/pages/chat_page/widgets/image_loading_widget.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/animation_circular_progress_indicator.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/icon_widget.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';

class ImageMessageWidget extends StatelessWidget {
  final ImageMessageEntity imageMessage;

  const ImageMessageWidget({
    super.key,
    required this.imageMessage,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: imageMessage.imageAspectRatio,
      child: BlocBuilder<MediaHandlerCubit, MediaHandlerState>(
        buildWhen: _buildWhenImageState,
        builder: (context, state) => ClipRect(
          child: Builder(
            builder: (context) {
              if (state is UploadMediaState) {
                return state.when(
                  uploading: (progress, id) => ImageLoadingWidget(
                    imageMessage: imageMessage,
                    progress: progress,
                    onCancel: () {
                      context.read<MediaHandlerCubit>().cancelUpload(id);
                    },
                  ),
                  success: (id, url) => Stack(
                    children: [
                      Image.file(
                        File(imageMessage.url),
                        fit: BoxFit.contain,
                      ),
                      Positioned.fill(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                          // Adjust sigmaX and sigmaY for blur intensity
                          child: Container(
                            color: Colors.black
                                .withOpacity(0.6), // Optional overlay color
                          ),
                        ),
                      ),
                      Center(
                        child: IconWidget(
                          icon: Icons.download,
                          iconColor: context.colorScheme.surface,
                          boxShape: BoxShape.circle,
                          backgroundColor:
                              context.colorScheme.surface.withOpacity(0.32),
                          height: 48,
                          width: 48,
                          padding: 12,
                          onPressed: () {
                            context
                                .read<MediaHandlerCubit>()
                                .download(imageMessage);
                          },
                        ),
                      )
                    ],
                  ),
                  failed: (message, id) => Stack(
                    children: [
                      Image.file(
                        File(imageMessage.url),
                        fit: BoxFit.contain,
                      ),
                      Positioned.fill(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                          child: Container(
                            color: Colors.black
                                .withOpacity(0.8), // Optional overlay color
                          ),
                        ),
                      ),
                      Center(
                        child: IconWidget(
                          icon: Icons.refresh,
                          iconColor: const Color(0xffFF7169),
                          boxShape: BoxShape.circle,
                          backgroundColor:
                              const Color(0xffFF7169).withOpacity(0.32),
                          height: 48,
                          width: 48,
                          padding: 12,
                          onPressed: () {
                            context
                                .read<MediaHandlerCubit>()
                                .uploadImage(imageMessage);
                          },
                        ),
                      )
                    ],
                  ),
                );
              }
              if (state is DownloadMediaState) {
                return state.when(
                  downloading: (progress, id) => ImageLoadingWidget(
                    imageMessage: imageMessage,
                    progress: progress,
                    onCancel: () {
                      context
                          .read<MediaHandlerCubit>()
                          .cancelDownload(imageMessage.objectName, id);
                    },
                  ),
                  success: (id) =>
                      Image.file(File(imageMessage.url), fit: BoxFit.contain),
                  failed: (message, id) => Stack(
                    children: [
                      Image.file(
                        File(imageMessage.url),
                        fit: BoxFit.contain,
                      ),
                      Positioned.fill(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                          child: Container(
                            color: Colors.black
                                .withOpacity(0.8), // Optional overlay color
                          ),
                        ),
                      ),
                      Center(
                        child: IconWidget(
                          icon: Icons.refresh,
                          iconColor: const Color(0xffFF7169),
                          boxShape: BoxShape.circle,
                          backgroundColor:
                          const Color(0xffFF7169).withOpacity(0.32),
                          height: 48,
                          width: 48,
                          padding: 12,
                          onPressed: () {
                            context
                                .read<MediaHandlerCubit>()
                                .download(imageMessage);
                          },
                        ),
                      )
                    ],
                  ),
                );
              }
              return Image.file(File(imageMessage.url), fit: BoxFit.contain);
            },
          ),
        ),
      ),
    );
  }

  bool _buildWhenImageState(
      MediaHandlerState previous, MediaHandlerState current) {
    if (current is UploadMediaState && current.id == imageMessage.id) {
      return true;
    }
    if (current is DownloadMediaState && current.id == imageMessage.id) {
      return true;
    }
    return false;
  }
}
