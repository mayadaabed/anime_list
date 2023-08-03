import 'package:anime_list/config/constants.dart';
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
    String theme = _appSettingsSharedPreferences.theme;
    if (theme == Constants.prefKeyThemeDark) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.light;
    }
  }

  _saveTheme(String isDarkMode) {
    if (isDarkMode == 'dark') {
      _appSettingsSharedPreferences.setAppTheme(Constants.prefKeyThemeDark);
    } else {
      _appSettingsSharedPreferences.setAppTheme(Constants.prefKeyThemeLight);
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
      return managerDarkThemeData();
    } else {
      return managerLightThemeData();
    }
  }

  void _changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);

  Future<void> switchTheme(value) async {
    if (value == 1) {
      _changeThemeMode(ThemeMode.dark);
      _saveTheme(Constants.prefKeyThemeDark);
    } else {
      _changeThemeMode(ThemeMode.light);
      _saveTheme(Constants.prefKeyThemeLight);
    }
    await Get.forceAppUpdate();
  }
}
