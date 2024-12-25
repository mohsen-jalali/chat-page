import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_cubit.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_page_state.dart';
import 'package:gamer_tag/src/presentation/pages/chat_page/widgets/chat_app_bar_widget.dart';
import 'package:gamer_tag/src/presentation/pages/chat_page/widgets/chat_bubble_widget.dart';
import 'package:gamer_tag/src/presentation/pages/chat_page/widgets/chat_input_widget.dart';
import 'package:gamer_tag/src/presentation/pages/chat_page/widgets/date_time_widget.dart';
import 'package:gamer_tag/src/presentation/ui/widgets/text_widget.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/context_extensions.dart';
import 'package:gamer_tag/src/presentation/utils/extenstions/date_time_extensions.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with WidgetsBindingObserver {
  final TextEditingController _messageController = TextEditingController();
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final ScrollController _scrollController = ScrollController();

  ChatPageCubit get cubit => context.read<ChatPageCubit>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timestamp) {
      _listKey.currentState?.insertAllItems(0, cubit.messageList.length);
    });
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    _messageController.dispose();
    _listKey.currentState?.dispose();
    _scrollController.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    final mediaQuery = MediaQuery.of(context);
    final keyboardHeight = mediaQuery.viewInsets.bottom;
    if (keyboardHeight > 0) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BlocBuilder<ChatPageCubit, ChatPageState>(
            buildWhen: (previous, current) => current is SwitchedUsersState,
            builder: (context, state) {
              return ChatAppBarWidget(
                user: cubit.currentUser,
                onSwitchUser: () {
                  cubit.switchUsers();
                },
              );
            },
          ),
          Expanded(
            child: BlocConsumer<ChatPageCubit, ChatPageState>(
              listener: (context, state) {
                if (state is SendMessageState) {
                  _messageController.clear();
                  _listKey.currentState?.insertItem(
                    cubit.messageList.length - 1,
                    duration: const Duration(milliseconds: 500),
                  );
                }
                if (state is DeletedMessageState) {
                  if (state.isManualRemove) {
                    _listKey.currentState?.reassemble();
                    _listKey.currentState?.removeItem(
                      state.messageIndex,
                      (context, animation) => const SizedBox(),
                      duration: const Duration(milliseconds: 500),
                    );
                  } else {
                    _listKey.currentState?.removeItem(
                      state.messageIndex,
                      (context, animation) => SizeTransition(
                        axisAlignment: 0,
                        sizeFactor: animation,
                        child: ChatBubbleWidget(
                          message: state.message,
                          animation: animation,
                          isGrouped: false,
                          isSender:
                              cubit.isMessageFromUser(state.message.senderId),
                          isRemoved: true,
                          isManualRemoved: state.isManualRemove,
                          messageIndex: state.messageIndex,
                          isLastGroupMessage:
                              isLastGropedMessage(state.messageIndex),
                        ),
                      ),
                      duration: const Duration(milliseconds: 500),
                    );
                  }
                }
              },
              buildWhen: (previous, current) => true,
              builder: (context, state) => GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: NotificationListener<ScrollNotification>(
                  onNotification: (scrollNotification) {
                    if (scrollNotification is UserScrollNotification) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    }
                    return false;
                  },
                  child: AnimatedList(
                    key: _listKey,
                    controller: _scrollController,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    itemBuilder: (context, index, animation) {
                      return Column(
                        children: [
                          (index == 0 ||
                                  cubit.messageList[index].sentAt
                                      .isDifferentMoreThan2Min(
                                          cubit.messageList[index - 1].sentAt))
                              ? DateTimeWidget(
                                  dateTime: cubit.messageList[index].sentAt)
                              : const SizedBox(),
                          ChatBubbleWidget(
                            messageIndex: index,
                            animation: animation,
                            isGrouped: index > 0
                                ? cubit.messageList[index].sentAt
                                    .isDifferentLessThan2Min(
                                        cubit.messageList[index - 1].sentAt)
                                : false,
                            message: cubit.messageList[index],
                            isSender: cubit.isMessageFromUser(
                                cubit.messageList[index].senderId),
                            isLastGroupMessage: isLastGropedMessage(index),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: ChatInputWidget(
                messageController: _messageController,
                onToggleTimer: () {
                  cubit.toggleTimerMessage();
                },
                onSendMessage: () {
                  cubit.sendTextMessage(_messageController.text);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  bool isLastGropedMessage(int index) {
    if (cubit.messageList.length - 1 <= index) {
      return true;
    }
    if (cubit.messageList[index + 1].senderId !=
        cubit.messageList[index].senderId) {
      return true;
    }
    if (cubit.messageList[index + 1].sentAt
        .isDifferentMoreThan2Min(cubit.messageList[index].sentAt)) {
      return true;
    }
    return false;
  }
}
