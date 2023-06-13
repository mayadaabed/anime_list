import 'package:shared_preferences/shared_preferences.dart';
import '../../../config/constants.dart';
import '../../extentions/extentions.dart';

class AppSettingsSharedPreferences {
  final SharedPreferences _sharedPreferences;

  AppSettingsSharedPreferences(this._sharedPreferences);

  Future<void> setOutBoardingViewed() async {
    await _sharedPreferences.setBool(
      ConstantsPrefsKeys.outBoardingViewedKey,
      true,
    );
  }

  bool getOutBoardingViewed() {
    return _sharedPreferences
        .getBool(
          ConstantsPrefsKeys.outBoardingViewedKey,
        )
        .onNull();
  }

  void clear() {
    _sharedPreferences.clear();
  }
}
