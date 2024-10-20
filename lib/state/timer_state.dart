import "package:chess_timer/data/timer_category.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "timer_state.freezed.dart";

@freezed
class TimerState with _$TimerState {
  const factory TimerState({
    List<TimerCategory>? timerCategories,
  }) = _TimerState;

  const TimerState._();

  List<TimerCategory> get timerCategoriesOrThrow {
    if (timerCategories == null) {
      throw StateError("Timer categories not loaded");
    }
    return timerCategories!;
  }
}
