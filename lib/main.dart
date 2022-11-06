import 'package:decacrypt/app_view.dart';
import 'package:decacrypt/working_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_strategy/url_strategy.dart';
import 'utils/size_config.dart';
import 'view/error_screen.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp.router(
      routeInformationProvider: _router.routeInformationProvider,
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
    );
  }
}

final GoRouter _router =
    GoRouter(errorBuilder: (context, state) => ErrorScreen(), routes: <GoRoute>[
  GoRoute(path: '/', builder: (context, state) => AppView(), routes: [
    GoRoute(
      path: 'work',
      builder: (context, state) => WorkingScreen(),
    )
  ]),
]);
