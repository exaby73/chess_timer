import "package:freezed_annotation/freezed_annotation.dart";

part "timer_data.freezed.dart";

part "timer_data.g.dart";

@freezed
class TimerData with _$TimerData {
  const factory TimerData({
    required String name,
    required int time,
    required int increment,
  }) = _TimerData;

  factory TimerData.fromJson(Map<String, dynamic> json) =>
      _$TimerDataFromJson(json);
}
