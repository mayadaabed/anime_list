import 'package:anime_list/core/theme/manager_dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/dependency_injection.dart';
import '../storage/local/app_settings_shared_preferences.dart';
import '../theme/manager_light_theme.dart';

class ThemeService {
  final AppSettingsSharedPreferences _appSettingsSharedPreferences =
      instance<AppSettingsSharedPreferences>();

  ThemeMode loadTheme() {
    String theme = _appSettingsSharedPreferences.getAppTheme();
    if (theme == 'dark') {
      return ThemeMode.dark;
    } else {
      return ThemeMode.light;
    }
  }

  _saveTheme(String isDarkMode) {
    if (isDarkMode == 'dark') {
      _appSettingsSharedPreferences.setAppTheme('dark');
    } else {
      _appSettingsSharedPreferences.setAppTheme('light');
    }
  }

  ThemeMode getThemeMode() {
    if (loadTheme() == ThemeMode.dark) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.light;
    }
  }

  ThemeData getThemeData() {
    if (loadTheme() == ThemeMode.dark) {
      print('dark');
      return managerDarkThemeData();
    } else {
      print('light');

      return managerLightThemeData();
    }
  }

  void _changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);

  Future<void> switchTheme(value) async {
    if (value == 1) {
      _changeThemeMode(ThemeMode.dark);
      _saveTheme('dark');
      print('dark');
    } else {
      _changeThemeMode(ThemeMode.light);
      _saveTheme('light');
      print('light');
    }
    await Get.forceAppUpdate();
  }
}
