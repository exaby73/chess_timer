import "package:chess_timer/core/di/di.dart";
import "package:chess_timer/core/di/modules/bloc_module.dart";
import "package:chess_timer/core/routing/app_router.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

void main() {
  configureDI();

  runApp(
    MultiBlocProvider(
      providers: di.providers,
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: di.router.config(),
    );
  }
}
