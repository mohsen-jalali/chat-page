import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_cubit.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_page_state.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/icon_widget.dart';
import 'package:gamer_tag/src/presentation/utils/constants/assets.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';

class TimerIconWidget extends StatefulWidget {
  const TimerIconWidget({super.key});

  @override
  State<TimerIconWidget> createState() => _TimerIconWidgetState();
}

class _TimerIconWidgetState extends State<TimerIconWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    super.initState();
  }

  void _animationListener() {
    if (_controller.status == AnimationStatus.completed) {
      _controller.reverse();
    } else if (_controller.status == AnimationStatus.dismissed) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatPageCubit, ChatPageState>(
      listenWhen: _buildWhenTimerChat,
      buildWhen: _buildWhenTimerChat,
      listener: (context, state) {
        if (state is! SwitchedTimerMessageState) {
          _controller.removeListener(_animationListener);
          _controller.reset();
          return;
        }
        if (state.isTimerOn) {
          _controller.addListener(_animationListener);
          _controller.forward();
        } else {
          _controller.removeListener(_animationListener);
          _controller.reset();
        }
      },
      builder: (context, state) {
        bool isTimerOn =
        state is SwitchedTimerMessageState ? state.isTimerOn : false;
        return RotationTransition(
          turns: isTimerOn
              ? Tween(begin: 0.9, end: 1.1).animate(_controller)
              : Tween(begin: 0.0, end: 0.2).animate(_controller),
          child: IconWidget(
            icon: Assets.timerIcon,
            iconColor: isTimerOn
                ? context.colorScheme.secondary
                : context.colorScheme.surfaceContainer,
            height: 36,
            width: 36,
            padding: 6,
            onPressed: () {
              context.read<ChatPageCubit>().toggleTimerMessage();
            },
            boxShape: BoxShape.circle,
            backgroundColor: isTimerOn
                ? context.colorScheme.secondary.withOpacity(0.08)
                : Colors.transparent,
          ),
        );
      },
    );
  }

  bool _buildWhenTimerChat(ChatPageState previous, ChatPageState current) {
    return current is SwitchedTimerMessageState || current is SentMessageState;
  }
}
