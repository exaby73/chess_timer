import "package:chess_timer/core/di/di.dart";
import "package:chess_timer/core/di/modules/bloc_module.dart";
import "package:chess_timer/core/routing/app_router.dart";
import "package:chess_timer/state/timer_cubit.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDI();

  await di.timerCubit.loadTimerCategories();

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
      theme: ThemeData.light(),

    );
  }
}
