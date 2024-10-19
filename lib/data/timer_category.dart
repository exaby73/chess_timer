import "package:chess_timer/data/timer_data.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "timer_category.freezed.dart";

part "timer_category.g.dart";

@freezed
class TimerCategory with _$TimerCategory {
  const factory TimerCategory({
    required String name,
    required List<TimerData> timers,
  }) = _TimerCategory;

  factory TimerCategory.fromJson(Map<String, dynamic> json) =>
      _$TimerCategoryFromJson(json);
}
