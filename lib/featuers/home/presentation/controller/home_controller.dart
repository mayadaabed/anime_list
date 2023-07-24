import 'dart:async';
import 'package:anime_list/config/constants.dart';
import 'package:anime_list/core/resources/manager_strings.dart';
import 'package:anime_list/featuers/home/domain/model/data_model.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_render_dialog/flutter_state_render_dialog.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../../config/dependency_injection.dart';
import '../../../../core/cache/cache.dart';
import '../../domain/model/manga_models/manga_data_model.dart';
import '../../domain/use_case/manga_use_case.dart';
import '../../domain/use_case/trending_anime_use_case.dart';
import '../view/manga_details_view.dart';
import '../view/trending_anime_details_view.dart';

class HomeController extends GetxController {
  late CarouselController carouselController;
  late YoutubePlayerController youtubePlayerController =
      YoutubePlayerController(
    initialVideoId: CacheData().getYoutybeViedoId(),
    flags: const YoutubePlayerFlags(
      mute: false,
      autoPlay: false,
      disableDragSeek: false,
      loop: false,
      isLive: false,
      forceHD: false,
      enableCaption: true,
    ),
  );

  int current = 0;
  int selectedCategoryIndex = 0;
  int i = 3;

  List<DataModel> trendingAnimeList = [];
  List<DataModel> allAnimeList = [];
  List<MangaDataModel> mangaList = [];
  List<MangaDataModel> allMangaList = [];

  final TrendingAnimeUseCase _trendingAnimeUseCase =
      instance<TrendingAnimeUseCase>();

  final MangaUseCase _mangaUseCase = instance<MangaUseCase>();
  CacheData cacheData = CacheData();

  @override
  void onInit() {
    super.onInit();
    carouselController = CarouselController();
    trendingAnime().then((value) {
      Timer(
          const Duration(
            seconds: Constants.mangaDuration,
          ), () {
        manga();
      });
    });
  }

  void change(int index) {
    current = index;
    update();
  }

  void goTo(String route) {
    Navigator.pushNamed(Get.context!, route);
  }

  performAllAnime(int index) {
    CacheData().setYoutybeViedoId(
        allAnimeList[index].attributesResponse!.youtubeVideoId!.toString());

    youtubePlayerController = YoutubePlayerController(
      initialVideoId:
          trendingAnimeList[index].attributesResponse!.youtubeVideoId!,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
    Get.to(() => TrendingAnimeDetailsView(
          title: allAnimeList[index].attributesResponse!.titles!.en.toString(),
          coverImage: allAnimeList[index]
              .attributesResponse!
              .coverImage!
              .large
              .toString(),
          description:
              allAnimeList[index].attributesResponse!.description!.toString(),
          averageRating:
              allAnimeList[index].attributesResponse!.averageRating!.toString(),
          usreCount: allAnimeList[index].attributesResponse!.userCount!,
          favoritesCount:
              allAnimeList[index].attributesResponse!.favoritesCount!,
          startDate: allAnimeList[index].attributesResponse!.startDate!,
          endDate: allAnimeList[index].attributesResponse!.endDate!,
          nextRelease: allAnimeList[index].attributesResponse!.nextRelease!,
          popularityRank:
              allAnimeList[index].attributesResponse!.popularityRank!,
          ratingRank: allAnimeList[index].attributesResponse!.ratingRank!,
          ageRatingGuide:
              allAnimeList[index].attributesResponse!.ageRatingGuide!,
          posterImage:
              allAnimeList[index].attributesResponse!.posterImage!.large!,
          episodeCount:
              allAnimeList[index].attributesResponse!.episodeCount!.toString(),
          episodeLength:
              allAnimeList[index].attributesResponse!.episodeLength!.toString(),
          totalLength:
              allAnimeList[index].attributesResponse!.totalLength!.toString(),
          youtubeVideoId:
              allAnimeList[index].attributesResponse!.youtubeVideoId!,
          showType: allAnimeList[index].attributesResponse!.showType!,
        ));
  }

  performTrendingAnimeDetails(int index) {
    CacheData().setYoutybeViedoId(trendingAnimeList[index]
        .attributesResponse!
        .youtubeVideoId!
        .toString());
    youtubePlayerController = YoutubePlayerController(
      initialVideoId:
          trendingAnimeList[index].attributesResponse!.youtubeVideoId!,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
    Get.to(() => TrendingAnimeDetailsView(
          title: trendingAnimeList[index]
              .attributesResponse!
              .canonicalTitle
              .toString(),
          coverImage: trendingAnimeList[index]
              .attributesResponse!
              .coverImage!
              .large
              .toString(),
          description: trendingAnimeList[index]
              .attributesResponse!
              .description!
              .toString(),
          averageRating: trendingAnimeList[index]
              .attributesResponse!
              .averageRating!
              .toString(),
          usreCount: trendingAnimeList[index].attributesResponse!.userCount!,
          favoritesCount:
              trendingAnimeList[index].attributesResponse!.favoritesCount!,
          startDate: trendingAnimeList[index].attributesResponse!.startDate!,
          endDate: trendingAnimeList[index].attributesResponse!.endDate!,
          nextRelease:
              trendingAnimeList[index].attributesResponse!.nextRelease!,
          popularityRank:
              trendingAnimeList[index].attributesResponse!.popularityRank!,
          ratingRank: trendingAnimeList[index].attributesResponse!.ratingRank!,
          ageRatingGuide:
              trendingAnimeList[index].attributesResponse!.ageRatingGuide!,
          posterImage:
              trendingAnimeList[index].attributesResponse!.posterImage!.large!,
          episodeCount: trendingAnimeList[index]
              .attributesResponse!
              .episodeCount!
              .toString(),
          episodeLength: trendingAnimeList[index]
              .attributesResponse!
              .episodeLength!
              .toString(),
          totalLength: trendingAnimeList[index]
              .attributesResponse!
              .totalLength!
              .toString(),
          youtubeVideoId:
              trendingAnimeList[index].attributesResponse!.youtubeVideoId!,
          showType: trendingAnimeList[index].attributesResponse!.showType!,
        ));
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
      allAnimeList = r.data;
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
      allMangaList = r.data;
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

  performMangaDetails(int index) {
    Get.to(MangaDetailsView(
      mangaTitle: mangaList[index].mangaTitles![index].title!.toString(),
      mangaDescription: mangaList[index].synopsis.toString(),
      mangaImage: mangaList[index].images!.jpg!.largeImageUrl.toString(),
      mangaChapters: mangaList[index].chapters!.toString(),
      mangaDate: mangaList[index].published!.string!.toString(),
      mangaRate: mangaList[index].score!.toString(),
    ));
  }
}
