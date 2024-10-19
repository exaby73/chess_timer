import "dart:convert";

import "package:chess_timer/data/timer_category.dart";
import "package:chess_timer/gen/assets.gen.dart";
import "package:flutter/services.dart";
import "package:injectable/injectable.dart";

@singleton
final class TimerDataService {
  const TimerDataService();

  Future<List<TimerCategory>> getCategories() async {
    final data = await rootBundle.loadString(Assets.data.timerData);
    final json = jsonDecode(data);
    return [
      for (final category in json as List)
        TimerCategory.fromJson(category as Map<String, dynamic>),
    ];
  }
}
