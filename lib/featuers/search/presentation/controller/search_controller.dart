import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_state_render_dialog/flutter_state_render_dialog.dart';
import 'package:get/get.dart';
import '../../../../config/dependency_injection.dart';
import '../../../../core/cache/cache.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../routes/routes.dart';
import '../../domain/model/search_data_model.dart';
import '../../domain/use_case/search_use_case.dart';
import 'package:anime_list/core/extentions/extentions.dart';

class SearchControllers extends GetxController {
  late TextEditingController name = TextEditingController();
  late final SearchUseCase _searchUseCase = instance<SearchUseCase>();
  List<SearchDataModel> searchList = [];
  CacheData cacheData = CacheData();

  @override
  void onInit() {
    super.onInit();
    searchAnime();
  }

  bool isLoading = true;

  setAnimeId(int id) {
    cacheData.setanimeId(id);
  }

  performAnimeDetails(int index) {
    setAnimeId(
      searchList[index].malId.onNull(),
    );
    Navigator.pushNamed(Get.context!, Routes.animeDetailsView);
  }

  Future<void> searchAnime() async {
    BuildContext context = Get.context!;
    searchList = [];
    isLoading = true;
    (await _searchUseCase.execute(SearchBaseUseCaseInput(name: name.text)))
        .fold((l) {
      isLoading = false;
      dialogRender(
        context: context,
        stateRenderType: StateRenderType.popUpErrorState,
        message: l.message,
        title: ManagerStrings.ok,
      );
    }, (r) {
      isLoading = false;
      searchList = r.data!;
    });
    update();
  }
}
