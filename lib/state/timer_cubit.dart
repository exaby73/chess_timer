import "package:chess_timer/core/di/di.dart";
import "package:chess_timer/services/timer_data_service.dart";
import "package:chess_timer/state/timer_state.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:get_it/get_it.dart";
import "package:injectable/injectable.dart";

@singleton
final class TimerCubit extends Cubit<TimerState> {
  TimerCubit(this._timerDataService) : super(const TimerState());

  final TimerDataService _timerDataService;

  Future<void> loadTimerCategories() async {
    emit(
      state.copyWith(
        timerCategories: await _timerDataService.loadCategories(),
      ),
    );
  }
}

extension DITimerCubitExtension on GetIt {
  TimerCubit get timerCubit => di();
}
