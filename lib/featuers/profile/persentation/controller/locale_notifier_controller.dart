import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/dependency_injection.dart';
import '../../../../config/localizations/locale_settings.dart';
import '../../../../core/storage/local/app_settings_shared_preferences.dart';

class LocaleNotifierController extends GetxController {
  final AppSettingsSharedPreferences _appSettingsSharedPreferences =
      instance<AppSettingsSharedPreferences>();
  final languageList = LocaleSettings.languages;

  String get currentLanguage => _appSettingsSharedPreferences.locale;

  Future<void> changeLanguage({
    required BuildContext context,
    required String langCode,
  }) async {
    _appSettingsSharedPreferences.setLocale(langCode);
    await EasyLocalization.of(context)!.setLocale(Locale(langCode));
    Get.updateLocale(Locale(langCode));
    update();
  }
}
