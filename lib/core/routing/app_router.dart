import "package:auto_route/auto_route.dart";
import "package:chess_timer/core/di/di.dart";
import "package:chess_timer/core/routing/app_router.gr.dart";
import "package:get_it/get_it.dart";
import "package:injectable/injectable.dart";

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        initial: true,
        path: "/",
        page: HomeRoute.page,
      ),
    ];
  }
}

extension DIAppRouterExtension on GetIt {
  AppRouter get router => di();
}
