import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamer_tag/src/presentation/bloc/chat_cubit/chat_cubit.dart';
import 'package:gamer_tag/src/presentation/config/routes.dart';
import 'package:gamer_tag/src/presentation/pages/chat_page/chat_page.dart';

class RouteGenerator {
  static Map<String, WidgetBuilder> getRoutes(RouteSettings settings) {
    dynamic param = settings.arguments;

    return {
      Routes.chatPage: (context) => BlocProvider(
            create: (context) => ChatPageCubit(),
            child: const ChatPage(),
          ),
    };
  }
}
