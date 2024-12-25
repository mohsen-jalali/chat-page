import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/image_message_entity.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/message_entity.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/text_message_entity.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_cubit.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_page_state.dart';
import 'package:gamer_tag/src/presentation/bloc/general_cubit/base_cubit.dart';
import 'package:gamer_tag/src/presentation/bloc/media_handler_cubit/media_handler_cubit.dart';
import 'package:gamer_tag/src/presentation/bloc/media_handler_cubit/media_handler_state.dart';
import 'package:gamer_tag/src/presentation/pages/chat_page/chat_page.dart';
import 'package:gamer_tag/src/presentation/pages/chat_page/widgets/image_message_widget.dart';
import 'package:gamer_tag/src/presentation/pages/chat_page/widgets/text_message_widget.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/text_widget.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/date_time_extensions.dart';

class ChatBubbleWidget extends StatefulWidget {
  final bool isSender;
  final MessageEntity message;
  final Animation<double> animation;
  final int messageIndex;
  final bool isRemoved;
  final bool isManualRemoved;
  final bool isGrouped;
  final bool isLastGroupMessage;

  const ChatBubbleWidget({
    super.key,
    this.isSender = true,
    required this.message,
    required this.animation,
    required this.messageIndex,
    this.isRemoved = false,
    this.isManualRemoved = false,
    required this.isGrouped,
    required this.isLastGroupMessage,
  });

  @override
  State<ChatBubbleWidget> createState() => _ChatBubbleWidgetState();
}

class _ChatBubbleWidgetState extends State<ChatBubbleWidget>
    with AutomaticKeepAliveClientMixin {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Scrollable.ensureVisible(
          context,
          duration: const Duration(milliseconds: 300),
          alignment: 0,
        );
      },
    );
    if (widget.message.messageType != MessageTypeEnum.image) {
      _autoDeleteMessageHandler();
    }
  }

  void _autoDeleteMessageHandler() {
    if (isAutoDelete == false || widget.isRemoved || widget.isManualRemoved) {
      return;
    }
    timer = Timer(
      widget.message.expiresAt!.difference(DateTime.now()),
      () {
        if (isAutoDelete == false &&
            widget.isRemoved == true &&
            widget.isManualRemoved == true) return;
        context.read<ChatPageCubit>().deleteMessage(widget.messageIndex);
        timer?.cancel();
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  bool get isAutoDelete {
    return widget.message.expiresAt != null;
  }

  bool get hasBackground {
    return widget.message.messageType != MessageTypeEnum.image;
  }

  EdgeInsets get margin {
    if (hasBackground) {
      return widget.isSender
          ? const EdgeInsets.fromLTRB(12, 7, 20, 7)
          : const EdgeInsets.fromLTRB(20, 7, 12, 7);
    }
    return widget.isSender
        ? const EdgeInsets.fromLTRB(12, 2, 8, 7)
        : const EdgeInsets.fromLTRB(8, 2, 12, 7);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocListener<MediaHandlerCubit, MediaHandlerState>(
      listenWhen: _listenWhenImageState,
      listener: (context, state) {
        if (state is UploadMediaState) {
          state.whenOrNull(
            success: (id, url) {
              _autoDeleteMessageHandler();
            },
          );
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SlideTransition(
            position: (widget.isRemoved || widget.isManualRemoved)
                ? Tween<Offset>(
                    end: Offset.zero,
                    begin: widget.isManualRemoved
                        ? Offset.zero
                        : (widget.isSender ? Offset(-2, 0) : Offset(2, 0)),
                  ).animate(
                    CurvedAnimation(
                      parent: widget.animation,
                      curve: Curves.easeOutQuad,
                    ),
                  )
                : Tween<Offset>(
                    begin: const Offset(-1, 60),
                    end: Offset.zero,
                  ).animate(
                    CurvedAnimation(
                      parent: widget.animation,
                      curve: Curves.easeOutQuad,
                    ),
                  ),
            child: FadeTransition(
              opacity: widget.animation,
              child: Padding(
                padding: EdgeInsets.only(
                    top: widget.isGrouped ? 2 : 8,
                    bottom: widget.isLastGroupMessage ? 8 : 0),
                child: Dismissible(
                  onDismissed: (direction) {
                    context.read<ChatPageCubit>().deleteMessage(
                        widget.messageIndex,
                        isManualRemove: true);
                  },
                  key: Key(widget.message.id),
                  direction: widget.isSender
                      ? DismissDirection.endToStart
                      : DismissDirection.startToEnd,
                  child: Align(
                    alignment: widget.isSender
                        ? Alignment.topRight
                        : Alignment.topLeft,
                    child: CustomPaint(
                      painter: hasBackground
                          ? SpecialChatBubbleThree(
                              color: isAutoDelete
                                  ? context.colorScheme.secondary
                                  : (widget.isSender
                                      ? context.colorScheme.primary
                                      : context.colorScheme.onSurface),
                              alignment: widget.isSender
                                  ? Alignment.topRight
                                  : Alignment.topLeft,
                              tail: widget.isLastGroupMessage ? true : false,
                            )
                          : null,
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: hasBackground
                                ? null
                                : BorderRadius.circular(32)),
                        margin: margin,
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * .7,
                        ),
                        child: Builder(builder: (context) {
                          return switch (widget.message.messageType) {
                            MessageTypeEnum.text => TextMessageWidget(
                                message: widget.message as TextMessageEntity,
                                isAutoDelete: isAutoDelete,
                                isSender: widget.isSender,
                              ),
                            MessageTypeEnum.image => ImageMessageWidget(
                                imageMessage:
                                    widget.message as ImageMessageEntity,
                              ),
                            MessageTypeEnum.unsupported =>
                              throw UnimplementedError(),
                          };
                        }),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          BlocBuilder<ChatPageCubit, ChatPageState>(
            buildWhen: _buildWhenSeenWidget,
            builder: (context, state) {
              final cubit = context.read<ChatPageCubit>();
              return Visibility(
                visible:
                    cubit.isMessageSeen(widget.messageIndex) && widget.isSender,
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(0,hasBackground ? 8:0,8,8),
                  child: TextWidget.medium(
                    "Read ${cubit.lastSeenTimeStamp.messageSeenFormat}",
                    context: context,
                    additionalStyle: TextStyle(
                        fontSize: 11,
                        color: const Color(0xff3C3C43).withOpacity(0.6)),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;

  bool _listenWhenImageState(
      MediaHandlerState previous, MediaHandlerState current) {
    if (current is UploadMediaState && current.id == widget.message.id) {
      return true;
    }
    return false;
  }

  bool _buildWhenSeenWidget(ChatPageState previous, ChatPageState current) {
    return current is SwitchUsersState;
  }
}

class SpecialChatBubbleThree extends CustomPainter {
  final Color color;
  final Alignment alignment;
  final bool tail;

  SpecialChatBubbleThree({
    required this.color,
    required this.alignment,
    required this.tail,
  });

  final double _radius = 10.0;

  @override
  void paint(Canvas canvas, Size size) {
    var h = size.height;
    var w = size.width;
    if (alignment == Alignment.topRight) {
      if (tail) {
        var path = Path();
        path.moveTo(_radius * 2, 0);
        path.quadraticBezierTo(0, 0, 0, _radius * 1.5);
        path.lineTo(0, h - _radius * 1.5);
        path.quadraticBezierTo(0, h, _radius * 2, h);
        path.lineTo(w - _radius * 3, h);
        path.quadraticBezierTo(
            w - _radius * 1.5, h, w - _radius * 1.5, h - _radius * 0.6);
        path.quadraticBezierTo(w - _radius * 1, h, w, h);
        path.quadraticBezierTo(
            w - _radius * 0.8, h, w - _radius, h - _radius * 1.5);
        path.lineTo(w - _radius, _radius * 1.5);
        path.quadraticBezierTo(w - _radius, 0, w - _radius * 3, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBR(0, 0, w, h, Radius.zero),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      } else {
        var path = Path();
        path.moveTo(_radius * 2, 0);
        path.quadraticBezierTo(0, 0, 0, _radius * 1.5);
        path.lineTo(0, h - _radius * 1.5);
        path.quadraticBezierTo(0, h, _radius * 2, h);
        path.lineTo(w - _radius * 3, h);
        path.quadraticBezierTo(w - _radius, h, w - _radius, h - _radius * 1.5);
        path.lineTo(w - _radius, _radius * 1.5);
        path.quadraticBezierTo(w - _radius, 0, w - _radius * 3, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBR(0, 0, w, h, Radius.zero),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      }
    } else {
      if (tail) {
        var path = Path();
        path.moveTo(_radius * 3, 0);
        path.quadraticBezierTo(_radius, 0, _radius, _radius * 1.5);
        path.lineTo(_radius, h - _radius * 1.5);
        path.quadraticBezierTo(_radius * .8, h, 0, h);
        path.quadraticBezierTo(
            _radius * 1, h, _radius * 1.5, h - _radius * 0.6);
        path.quadraticBezierTo(_radius * 1.5, h, _radius * 3, h);
        path.lineTo(w - _radius * 2, h);
        path.quadraticBezierTo(w, h, w, h - _radius * 1.5);
        path.lineTo(w, _radius * 1.5);
        path.quadraticBezierTo(w, 0, w - _radius * 2, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBR(0, 0, w, h, Radius.zero),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      } else {
        var path = Path();
        path.moveTo(_radius * 3, 0);
        path.quadraticBezierTo(_radius, 0, _radius, _radius * 1.5);
        path.lineTo(_radius, h - _radius * 1.5);
        path.quadraticBezierTo(_radius, h, _radius * 3, h);
        path.lineTo(w - _radius * 2, h);
        path.quadraticBezierTo(w, h, w, h - _radius * 1.5);
        path.lineTo(w, _radius * 1.5);
        path.quadraticBezierTo(w, 0, w - _radius * 2, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBR(0, 0, w, h, Radius.zero),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
