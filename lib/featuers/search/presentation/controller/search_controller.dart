import 'package:flutter/material.dart';
import 'package:flutter_state_render_dialog/flutter_state_render_dialog.dart';
import 'package:get/get.dart';
import '../../../../config/dependency_injection.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../domain/model/search_data_model.dart';
import '../../domain/use_case/search_use_case.dart';

class SearchControllers extends GetxController {
  late TextEditingController name = TextEditingController();
  late final SearchUseCase _searchUseCase = instance<SearchUseCase>();
  List<SearchDataModel> searchList = [];

  @override
  void onInit() {
    super.onInit();
    searchAnime();
  }

  bool isLoading = true;

  search() {
    isLoading = true;
    searchAnime().then((value) {
      isLoading = false;
    });

    update();
  }

  Future<void> searchAnime() async {
    BuildContext context = Get.context!;
    // isLoading = true;
    // update();
    (await _searchUseCase.execute(SearchBaseUseCaseInput(name: name.text)))
        .fold((l) {
      // isLoading = false;
      // update();
      dialogRender(
        context: context,
        stateRenderType: StateRenderType.popUpErrorState,
        message: l.message,
        title: ManagerStrings.ok,
      );
    }, (r) {
      // isLoading = false;
      searchList = r.data!;
      // update();
    });
  }
}
