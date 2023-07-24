import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/anime_details/domain/model/anime_details_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_render_dialog/flutter_state_render_dialog.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../../config/dependency_injection.dart';
import '../../../../core/cache/cache.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../domain/use_case/anime_details_use_case.dart';

class AnimeDetailsController extends GetxController {
  late final AnimeDetailsUseCase _animeDetailsUseCase =
      instance<AnimeDetailsUseCase>();
  late AnimeDetailsModel _animeDetailsModel;
  CacheData cacheData = CacheData();
  String animeAvatar = '';
  var newDate = '';
  late YoutubePlayerController youtubePlayerController;

  @override
  void onInit() {
    super.onInit();
    animeDetails();
  }

  bool isURLValid(String url) {
    Uri? uri = Uri.tryParse(url);
    return uri != null && uri.isAbsolute;
  }

  ImageProvider<Object> image() {
    if (isURLValid(animeAvatar)) {
      return CachedNetworkImageProvider(animeAvatar);
    }

    return const AssetImage(
      ManagerAssets.outBoardingImag1,
    );
  }

  String title = '';
  String coverImage = '';
  String description = '';
  double averageRating = 0.0;
  int usreCount = 0;
  int favoritesCount = 0;
  String startDate = '';
  String endDate = '';
  String nextRelease = '';
  int popularityRank = 0;
  int ratingRank = 0;
  String ageRatingGuide = '';
  String posterImage = '';
  int episodeCount = 0;
  String episodeLength = '';
  String totalLength = '';
  String youtubeVideoId = '';
  String showType = '';
  String background = '';

  resetData() {
    title = _animeDetailsModel.data!.title!.onNull();
    animeAvatar = _animeDetailsModel.data!.images!.jpg!.largeImageUrl!.onNull();
    description = _animeDetailsModel.data!.synopsis!.onNull();
    averageRating = _animeDetailsModel.data!.score!.onNull();
    usreCount = _animeDetailsModel.data!.members!.onNull();
    favoritesCount = _animeDetailsModel.data!.favorites!.onNull();
    startDate = DateFormat('EEE, d MMM yyyy')
        .format(DateTime.parse(_animeDetailsModel.data!.aired!.from!));
    endDate = _animeDetailsModel.data!.aired!.to.onNull();
    popularityRank = _animeDetailsModel.data!.popularity!.onNull();
    ratingRank = _animeDetailsModel.data!.rank!.onNull();
    ageRatingGuide = _animeDetailsModel.data!.rating!.onNull();
    posterImage = _animeDetailsModel.data!.images!.jpg!.largeImageUrl!.onNull();
    episodeCount = _animeDetailsModel.data!.episodes!.onNull();
    episodeLength = _animeDetailsModel.data!.duration!.onNull();
    totalLength = _animeDetailsModel.data!.duration!.onNull();
    youtubeVideoId = _animeDetailsModel.data!.trailer!.youtubeId.onNull();
    showType = _animeDetailsModel.data!.type!.onNull();
    background = _animeDetailsModel.data!.background!.onNull();
    youtubePlayerController = YoutubePlayerController(
      initialVideoId: youtubeVideoId,
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
    update();
  }

  Future<void> animeDetails() async {
    BuildContext context = Get.context!;
    (await _animeDetailsUseCase
            .execute(AnimeDetailsBaseUseCaseInput(id: cacheData.getanimeId())))
        .fold((l) {
      dialogRender(
        context: context,
        stateRenderType: StateRenderType.popUpErrorState,
        message: l.message,
        title: ManagerStrings.ok,
      );
    }, (r) {
      _animeDetailsModel = r;
      cacheData.setanimeId(r.data!.malId!);
      // cacheData.setAnimeData(_animeDetailsModel);
      resetData();
    });
  }
}
