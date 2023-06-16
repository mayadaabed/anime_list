import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:anime_list/featuers/home/domain/model/data_model.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_render_dialog/flutter_state_render_dialog.dart';
import 'package:get/get.dart';

import '../../../../config/dependency_injection.dart';
import '../../domain/model/manga_models/manga_data_model.dart';
import '../../domain/use_case/manga_use_case.dart';
import '../../domain/use_case/trending_anime_use_case.dart';

class HomeController extends GetxController {
  late CarouselController carouselController;
  int current = 0;
  int selectedCategoryIndex = 0;

  List<DataModel> trendingAnimeList = [];
  List<MangaDataModel> mangaList = [];

  final TrendingAnimeUseCase _trendingAnimeUseCase =
      instance<TrendingAnimeUseCase>();

  final MangaUseCase _mangaUseCase = instance<MangaUseCase>();

  @override
  void onInit() {
    super.onInit();
    trendingAnime();
    manga();
    carouselController = CarouselController();
  }

  void change(int index) {
    current = index;
    update();
  }

  void selectCategory(int index) {
    selectedCategoryIndex = index;
    update();
  }

  Future<void> trendingAnime() async {
    BuildContext context = Get.context!;
    (await _trendingAnimeUseCase.execute()).fold((l) {
      dialogRender(
        context: context,
        stateRenderType: StateRenderType.popUpErrorState,
        message: l.message,
        title: ManagerStrings.ok,
      );
    }, (r) {
      int i = 3;
      for (var item in r.data!) {
        if (trendingAnimeList.length < i) {
          trendingAnimeList.add(item);
        } else {
          break;
        }
      }
      update();
    });
  }

  Future<void> manga() async {
    BuildContext context = Get.context!;
    (await _mangaUseCase.execute()).fold((l) {
      dialogRender(
        context: context,
        stateRenderType: StateRenderType.popUpErrorState,
        message: l.message,
        title: ManagerStrings.ok,
      );
    }, (r) {
      int i = 3;
      for (var item in r.data!) {
        if (mangaList.length < i) {
          mangaList.add(item);
        } else {
          break;
        }
      }
      update();
    });
  }
}
