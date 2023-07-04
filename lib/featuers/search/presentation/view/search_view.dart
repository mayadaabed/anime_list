import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:anime_list/featuers/search/presentation/view/widgets/search_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/constants.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/widgets/base_text_form_feild.dart';
import '../../../../core/widgets/shimmer_effect.dart';
import '../../../../core/widgets/will_pop_scope.dart';
import '../controller/search_controller.dart';
import 'widgets/search_item.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: GetBuilder<SearchControllers>(
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              elevation: Constants.elevation,
              backgroundColor: ManagerColors.transparent,
              iconTheme: IconThemeData(
                color: ManagerColors.white,
                size: ManagerIconSize.s36,
              ),
            ),
            backgroundColor: ManagerColors.backgroundColor,
            body: ListView(children: [
              SizedBox(
                height: ManagerHeight.h20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: ManagerWidth.w10,
                  right: ManagerWidth.w10,
                ),
                child: baseTextFormField(
                    controller: controller.name,
                    hintText: ManagerStrings.search,
                    prefixIcon: Icons.search,
                    onChange: (value) {
                      controller.search();
                    }),
              ),
              SizedBox(
                height: ManagerHeight.h20,
              ),
              controller.isLoading
                  ? GridView.builder(
                      padding: EdgeInsets.only(
                        left: ManagerWidth.w10,
                        right: ManagerWidth.w10,
                      ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: .9,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 22),
                      itemCount: controller.searchList.length,
                      itemBuilder: (context, index) {
                        return SearchItem(
                          episode:
                              controller.searchList[index].episodes.toString(),
                          imagePath: controller
                              .searchList[index].images!.jpg!.largeImageUrl
                              .toString(),
                          name: controller.searchList[index].title.toString(),
                        );
                      },
                    )
                  : buildEffect(
                      SearchShimmer(),
                      controller.isLoading,
                    ),
            ]),
          );
        },
      ),
    );
  }
}
