import 'package:flutter/cupertino.dart';
import '../../core/storage/local/app_settings_shared_preferences.dart';
import '../constants.dart';
import '../dependency_injection.dart';

LocaleSettings localeSettings = LocaleSettings();

class LocaleSettings {
  final AppSettingsSharedPreferences _preferences;

  LocaleSettings() : _preferences = instance<AppSettingsSharedPreferences>();

  static const Map<String, String> languages = {
    Constants.englishKey: Constants.english,
    Constants.arabicKey: Constants.arabic,
  };

  List<Locale> get supportedLocales =>
      languages.keys.map((e) => Locale(e)).toList();

  Locale get defaultLocale => Locale(_preferences.locale);
}
