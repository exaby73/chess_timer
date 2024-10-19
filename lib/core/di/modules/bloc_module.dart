import "package:chess_timer/core/di/di.dart";
import "package:chess_timer/state/timer_cubit.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_it/get_it.dart";
import "package:injectable/injectable.dart";

@module
abstract class BlocModule {
  @Named("providers")
  @singleton
  List<BlocProvider> get providers {
    return [
      BlocProvider<TimerCubit>(create: (_) => di()),
    ];
  }
}

extension DIBlocModuleExtension on GetIt {
  List<BlocProvider> get providers => di(instanceName: "providers");
}
