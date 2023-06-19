import 'package:anime_list/featuers/home/data/data_source/remote_trending_anime_data_source.dart';
import 'package:anime_list/featuers/home/data/repository_implementation/trending_anime_repostiory_impl.dart';
import 'package:anime_list/featuers/home/domain/repository/manga_repository.dart';
import 'package:anime_list/featuers/home/domain/repository/trending_anime_repository.dart';
import 'package:anime_list/featuers/home/domain/use_case/manga_use_case.dart';
import 'package:anime_list/featuers/home/domain/use_case/trending_anime_use_case.dart';
import 'package:anime_list/featuers/home/presentation/controller/home_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/internet_checker/internet_checker.dart';
import '../core/network/app_api.dart';
import '../core/network/dio_factory.dart';
import '../core/storage/local/app_settings_shared_preferences.dart';
import '../featuers/home/data/data_source/remote_manga_data_source.dart';
import '../featuers/home/data/repository_implementation/manga_repository_impl.dart';
import '../featuers/out_boarding/presentation/controller/out_boarding_controller.dart';
import '../featuers/splash/presentation/controller/splash_controller.dart';

final instance = GetIt.instance;

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );

  instance.registerLazySingleton<AppSettingsSharedPreferences>(
      () => AppSettingsSharedPreferences(instance()));

  instance.registerLazySingleton(() => DioFactory());

  Dio dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton(() => AppApi(dio));

  instance.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      InternetConnectionCheckerPlus(),
    ),
  );
}

initSplash() {
  Get.put<SplashController>(SplashController());
}

disposeSplash() {
  Get.delete<SplashController>();
}

initOutBoarding() {
  disposeSplash();

  Get.put<OutBoardingController>(OutBoardingController());
}

disposeOutBoarding() {
  Get.delete<OutBoardingController>();
}

initHome() {
  disposeSplash();
  disposeOutBoarding();

  if (!GetIt.I.isRegistered<RemoteTrendingAnimeDataSource>()) {
    instance.registerLazySingleton<RemoteTrendingAnimeDataSource>(
      () => RemoteTrendingAnimeDataSourceImpl(
        instance<AppApi>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<TrendingAnimeRepository>()) {
    instance.registerLazySingleton<TrendingAnimeRepository>(
      () => TrendingAnimeImplementation(
        instance<RemoteTrendingAnimeDataSource>(),
        instance<NetworkInfo>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<TrendingAnimeUseCase>()) {
    instance.registerLazySingleton<TrendingAnimeUseCase>(
      () => TrendingAnimeUseCase(
        instance<TrendingAnimeRepository>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<RemoteMangaDataSource>()) {
    instance.registerLazySingleton<RemoteMangaDataSource>(
      () => RemoteMangaDataSourceImpl(
        instance<AppApi>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<MangaRepository>()) {
    instance.registerLazySingleton<MangaRepository>(
      () => MangaRepoImplementation(
        instance<RemoteMangaDataSource>(),
        instance<NetworkInfo>(),
      ),
    );
  }

  if (!GetIt.I.isRegistered<MangaUseCase>()) {
    instance.registerLazySingleton<MangaUseCase>(
      () => MangaUseCase(
        instance<MangaRepository>(),
      ),
    );
  }

  Get.put<HomeController>(HomeController());
}


