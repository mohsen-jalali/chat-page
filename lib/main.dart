import 'package:flutter/material.dart';
import 'package:gamer_tag/src/presentation/config/animated_page_builder.dart';
import 'package:gamer_tag/src/presentation/ui/theme/theme.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
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