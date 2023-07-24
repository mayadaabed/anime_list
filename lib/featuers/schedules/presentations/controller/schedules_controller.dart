import 'dart:async';
import 'package:anime_list/core/extentions/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_render_dialog/flutter_state_render_dialog.dart';
import 'package:get/get.dart';
import '../../../../config/constants.dart';
import '../../../../config/dependency_injection.dart';
import '../../../../core/cache/cache.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../routes/routes.dart';
import '../../domain/model/schedules_data_model.dart';
import '../../domain/use_case/schedules_use_case.dart';

class SchedulesController extends GetxController {
  late final SchedulesUseCase _schedulesUseCase = instance<SchedulesUseCase>();
  List<SchedulesDataModel> schedulesList = [];
  CacheData cacheData = CacheData();

  @override
  void onInit() {
    super.onInit();
    Timer(
        const Duration(
          seconds: Constants.schedulesDuration,
        ), () {
      schedules();
    });
  }

  setAnimeId(int id) {
    cacheData.setanimeId(id);
  }

  performAnimeDetails(int index) {
    setAnimeId(
      schedulesList[index].malId.onNull(),
    );
    Navigator.pushNamed(Get.context!, Routes.animeDetailsView);
  }

  Future<void> schedules() async {
    BuildContext context = Get.context!;
    (await _schedulesUseCase.execute()).fold((l) {
      dialogRender(
        context: context,
        stateRenderType: StateRenderType.popUpErrorState,
        message: l.message,
        title: ManagerStrings.ok,
      );
    }, (r) {
      schedulesList = r.data!;
    });
  }
}
