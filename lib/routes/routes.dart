import 'package:anime_list/featuers/home/presentation/view/all_manga_view.dart';
import 'package:anime_list/featuers/profile/persentation/view/locale_view.dart';
import 'package:anime_list/featuers/profile/persentation/view/theme_view.dart';
import 'package:anime_list/featuers/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import '../config/dependency_injection.dart';
import '../core/resources/manager_strings.dart';
import '../featuers/anime_details/presentation/view/anime_details_view.dart';
import '../featuers/home/presentation/view/all_anime_view.dart';
import '../featuers/main/presentation/view/main_view.dart';
import '../featuers/out_boarding/presentation/view/out_boarding_view.dart';
import '../featuers/splash/presentation/view/splash_view.dart';

class Routes {
  static const String splashView = '/splash_view';
  static const String outBoardingView = '/out_boarding_view';
  static const String homeView = '/home_view';
  static const String mainView = '/main_view';
  static const String searchView = '/search_view';
  static const String animeDetailsView = '/anime_details_view';
  static const String allAnimeView = '/all_anime_view';
  static const String allMangaView = '/all_manga_view';
  static const String themeView = '/theme_view';
  static const String localeView = '/locale_view';
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
      case Routes.mainView:
        initMainModule();
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.searchView:
        return MaterialPageRoute(builder: (_) => const SearchView());
      case Routes.animeDetailsView:
        initAnimeDetails();
        return MaterialPageRoute(builder: (_) => const AnimeDetailsView());
      case Routes.allAnimeView:
        return MaterialPageRoute(builder: (_) => const AllAnimeView());
      case Routes.allMangaView:
        return MaterialPageRoute(builder: (_) => const AllMangaView());
      case Routes.themeView:
        return MaterialPageRoute(builder: (_) => const ThemeView());
      case Routes.localeView:
        return MaterialPageRoute(builder: (_) => const LocaleView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(ManagerStrings.noRoutFound),
              ),
              body: Center(
                child: Text(ManagerStrings.noRoutFound),
              ),
            ));
  }
}
