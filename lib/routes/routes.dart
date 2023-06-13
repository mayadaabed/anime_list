import 'package:flutter/material.dart';
import '../config/dependency_injection.dart';
import '../core/resources/manager_strings.dart';
import '../featuers/home/presentation/view/home_view.dart';
import '../featuers/out_boarding/presentation/view/out_boarding_view.dart';
import '../featuers/splash/presentation/view/splash_view.dart';

class Routes {
  static const String splashView = '/splash_view';
  static const String outBoardingView = '/out_boarding_view';
  static const String homeView = '/home_view';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashView:
        initSplash();
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.outBoardingView:
        initOutBoarding();
        return MaterialPageRoute(builder: (_) => const OutBoardingView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(ManagerStrings.noRoutFound),
              ),
              body: const Center(
                child: Text(ManagerStrings.noRoutFound),
              ),
            ));
  }
}
