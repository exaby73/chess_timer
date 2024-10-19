import "package:chess_timer/state/timer_state.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:injectable/injectable.dart";

@singleton
final class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(const TimerState());
}
