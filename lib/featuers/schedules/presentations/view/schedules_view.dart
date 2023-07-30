import 'package:anime_list/featuers/schedules/presentations/controller/schedules_controller.dart';
import 'package:anime_list/featuers/schedules/presentations/view/widget/schedules_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/widgets/main_app_bar.dart';
import '../../../../core/widgets/will_pop_scope.dart';

class SchedulesView extends StatelessWidget {
  const SchedulesView({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: Scaffold(
        backgroundColor: context.theme.scaffoldBackgroundColor,
        appBar: MainAppBar(
          title: ManagerStrings.schedules,
          hasLeading: false,
        ),
        body: GetBuilder<SchedulesController>(builder: (controller) {
          return GridView.builder(
            padding: EdgeInsets.only(
              left: ManagerWidth.w10,
              right: ManagerWidth.w10,
              bottom: ManagerHeight.h100,
            ),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .9 / 1.2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20),
            itemCount: controller.schedulesList.length,
            itemBuilder: (context, index) {
              return SchedulesItem(
                onTap: () {
                  controller.performAnimeDetails(index);
                },
                imagePath: controller
                    .schedulesList[index].images!.jpg!.largeImageUrl
                    .toString(),
                name: controller.schedulesList[index].title.toString(),
                streaming:
                    controller.schedulesList[index].aired!.string.toString(),
              );
            },
          );
        }),
      ),
    );
  }
}
