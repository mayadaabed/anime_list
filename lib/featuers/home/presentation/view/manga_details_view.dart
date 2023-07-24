import 'package:anime_list/core/widgets/will_pop_scope.dart';
import 'package:anime_list/featuers/anime_details/presentation/view/widget/custom_decription.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_sizes.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/widgets/main_app_bar.dart';
import 'widget/trending_image.dart';

class MangaDetailsView extends StatelessWidget {
  final String mangaTitle;
  final String mangaDescription;
  final String mangaImage;
  final String mangaChapters;
  final String mangaDate;
  final String mangaRate;
  const MangaDetailsView({
    Key? key,
    required this.mangaTitle,
    required this.mangaDescription,
    required this.mangaImage,
    required this.mangaChapters,
    required this.mangaDate,
    required this.mangaRate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return willPopScope(
        child: Scaffold(
            backgroundColor: ManagerColors.backgroundColor,
            appBar: const MainAppBar(
              title: '',
            ),
            extendBodyBehindAppBar: true,
            body: SingleChildScrollView(
              child: Column(children: [
                TrendingImage(
                  posterImage: mangaImage,
                ),
                SizedBox(
                  height: ManagerHeight.h16,
                ),
                CustomDescription(
                  episode: mangaChapters,
                  title: mangaTitle,
                  averageRating: mangaRate,
                  startDate: mangaDate,
                  background: '',
                  description: mangaDescription,
                  type: ManagerStrings.chapters,
                ),
              ]),
            )));
  }
}
