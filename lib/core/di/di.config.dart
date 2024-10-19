// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chess_timer/core/di/modules/bloc_module.dart' as _i574;
import 'package:chess_timer/core/routing/app_router.dart' as _i95;
import 'package:chess_timer/state/timer_cubit.dart' as _i375;
import 'package:flutter_bloc/flutter_bloc.dart' as _i331;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final blocModule = _$BlocModule();
    gh.singleton<_i95.AppRouter>(() => _i95.AppRouter());
    gh.singleton<_i375.TimerCubit>(() => _i375.TimerCubit());
    gh.singleton<
        List<_i331.BlocProvider<_i331.StateStreamableSource<Object?>>>>(
      () => blocModule.providers,
      instanceName: 'providers',
    );
    return this;
  }
}

class _$BlocModule extends _i574.BlocModule {}
