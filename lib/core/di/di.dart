import 'package:chess_timer/core/di/di.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final di = GetIt.instance;

@injectableInit
void configureDI() {
  di.init();
}
