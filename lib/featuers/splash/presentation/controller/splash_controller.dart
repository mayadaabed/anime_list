import 'package:get/get.dart';

import '../../../../config/constants.dart';
import '../../../../core/service/theme_service.dart';
import '../../../../routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    ThemeService().getThemeData();
    Future.delayed(
        const Duration(
          seconds: Constants.splashDuration,
        ), () {
      Get.offAllNamed(Routes.outBoardingView);
    });
  }
}
