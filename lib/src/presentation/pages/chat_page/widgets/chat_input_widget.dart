import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_cubit.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_page_state.dart';
import 'package:gamer_tag/src/presentation/pages/chat_page/widgets/timer_icon_widget.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/custom_text_field.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/icon_widget.dart';
import 'package:gamer_tag/src/presentation/utils/constants/assets.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';

class ChatInputWidget extends StatelessWidget {
  final TextEditingController messageController;
  final VoidCallback onSendMessage;
  final VoidCallback onToggleTimer;

  const ChatInputWidget({
    super.key,
    required this.onSendMessage,
    required this.onToggleTimer,
    required this.messageController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          const TimerIconWidget(),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 80, minHeight: 48),
              child: CustomTextField(
                controller: messageController,
                borderRadius: 12,
                maxLines: null,
                hintText: "iMessage",
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                borderColor:
                    context.colorScheme.surfaceContainer.withOpacity(0.3),
                suffixIcon: ValueListenableBuilder(
                  valueListenable: messageController,
                  builder: (context, controller, child) {
                    if (controller.text.isNotEmpty) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconWidget(
                          icon: Icons.arrow_upward,
                          backgroundColor: context.colorScheme.primary,
                          boxShape: BoxShape.circle,
                          width: 24,
                          height: 24,
                          fill: 1,
                          size: 24,
                          iconColor: context.colorScheme.surface,
                          onPressed: () {
                            onSendMessage.call();
                          },
                        ),
                      );
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}