import 'dart:async';
import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_render_dialog/flutter_state_render_dialog.dart';
import 'package:get/get.dart';
import '../../../../config/dependency_injection.dart';
import '../../../../core/cache/cache.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../routes/routes.dart';
import '../../domain/model/seasons_data_model.dart';
import '../../domain/use_case/seasons_use_case.dart';

class SeasonsController extends GetxController {
  late final SeasonsUseCase _seasonsUseCase = instance<SeasonsUseCase>();
  List<SeasonsDataModel> seasonsList = [];
  CacheData cacheData = CacheData();

  setAnimeId(int id) {
    cacheData.setanimeId(id);
  }

  performAnimeDetails(int index) {
    setAnimeId(
      seasonsList[index].malId.onNull(),
    );
    update();
    Navigator.pushNamed(Get.context!, Routes.animeDetailsView);
  }

  @override
  void onInit() {
    super.onInit();
    Timer(
        const Duration(
          seconds: Constants.seasonsDuration,
        ), () {
      seasons();
    });
  }

  Future<void> seasons() async {
    BuildContext context = Get.context!;
    (await _seasonsUseCase.execute()).fold((l) {
      dialogRender(
        context: context,
        stateRenderType: StateRenderType.popUpErrorState,
        message: l.message,
        title: ManagerStrings.ok,
      );
    }, (r) {
      seasonsList = r.data!;
    });
  }
}
