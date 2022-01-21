import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';

class ThemeService {
  bool isDark() {
    return SchedulerBinding.instance!.window.platformBrightness ==
        Brightness.dark;
  }
}
