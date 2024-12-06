import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamer_tag/src/domain/entities/message_entity/message_entity.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_cubit.dart';
import 'package:gamer_tag/src/presentation/bloc/general_cubit/base_cubit.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/text_widget.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';

class ChatBubbleWidget extends StatefulWidget {
  final bool isSender;
  final MessageEntity message;
  final Animation<double> animation;
  final int messageIndex;
  final bool isRemoved;
  final bool isManualRemoved;

  const ChatBubbleWidget({
    super.key,
    this.isSender = true,
    required this.message,
    required this.animation,
    required this.messageIndex,
    this.isRemoved = false,
    this.isManualRemoved = false,
  });

  @override
  State<ChatBubbleWidget> createState() => _ChatBubbleWidgetState();
}

class _ChatBubbleWidgetState extends State<ChatBubbleWidget> with AutomaticKeepAliveClientMixin {
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
    _autoDeleteMessageHandler();
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

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return IgnorePointer(
      ignoring: widget.isSender == false,
      child: SlideTransition(
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
          child: Dismissible(
            onDismissed: (direction) {
              context
                  .read<ChatPageCubit>()
                  .deleteMessage(widget.messageIndex, isManualRemove: true);
            },
            key: Key(widget.message.id),
            direction: widget.isSender
                ? DismissDirection.endToStart
                : DismissDirection.startToEnd,
            child: Align(
              alignment:
                  widget.isSender ? Alignment.topRight : Alignment.topLeft,
              child: CustomPaint(
                painter: SpecialChatBubbleThree(
                  color: widget.isSender
                      ? (isAutoDelete
                          ? context.colorScheme.secondary
                          : context.colorScheme.primary)
                      : context.colorScheme.onSurface,
                  alignment:
                      widget.isSender ? Alignment.topRight : Alignment.topLeft,
                ),
                child: Container(
                  margin: widget.isSender
                      ? const EdgeInsets.fromLTRB(12, 7, 20, 7)
                      : const EdgeInsets.fromLTRB(20, 7, 12, 7),
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * .7,
                  ),
                  child: TextWidget.medium(
                    widget.message.text,
                    context: context,
                    additionalStyle: TextStyle(
                      fontSize: 16,
                      color: widget.isSender
                          ? context.colorScheme.surface
                          : context.colorScheme.tertiary,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class SpecialChatBubbleThree extends CustomPainter {
  final Color color;
  final Alignment alignment;

  SpecialChatBubbleThree({
    required this.color,
    required this.alignment,
  });

  final double _radius = 10.0;

  @override
  void paint(Canvas canvas, Size size) {
    var h = size.height;
    var w = size.width;
    if (alignment == Alignment.topRight) {
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
      path.moveTo(_radius * 3, 0);
      path.quadraticBezierTo(_radius, 0, _radius, _radius * 1.5);
      path.lineTo(_radius, h - _radius * 1.5);
      path.quadraticBezierTo(_radius * .8, h, 0, h);
      path.quadraticBezierTo(_radius * 1, h, _radius * 1.5, h - _radius * 0.6);
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
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
