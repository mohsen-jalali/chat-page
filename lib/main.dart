import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamer_tag/src/core/environment/environment_handler.dart';
import 'package:gamer_tag/src/dependency_injection.dart';
import 'package:gamer_tag/src/presentation/bloc/media_handler_cubit/media_handler_cubit.dart';
import 'package:gamer_tag/src/presentation/config/animated_page_builder.dart';
import 'package:gamer_tag/src/presentation/ui/theme/theme.dart';
import 'package:kiwi/kiwi.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvironmentHandler.init();
  DependencyInjection.inject();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              MediaHandlerCubit(storageRepository: KiwiContainer().resolve())
                ..onViewCreated(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GamerTag',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: GamerTagThemes.lightTheme,
      locale: const Locale('fa', 'IR'),
      onGenerateRoute: (settings) => AnimatedPageRouteBuilder(settings),
    );
  }
}
