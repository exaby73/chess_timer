import "package:freezed_annotation/freezed_annotation.dart";

part "timer_state.freezed.dart";

@freezed
class TimerState with _$TimerState {
  const factory TimerState() = _TimerState;
}
