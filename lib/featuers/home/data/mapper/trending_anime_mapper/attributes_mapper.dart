import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/home/domain/model/attributes_model.dart';
import '../../response/attributes_response.dart';
import 'poster_image_mapper.dart';
import 'titles_mapper.dart';
import 'rating_frequencies_mapper.dart';
import 'cover_image_mapper.dart';

extension AttributesMapper on AttributesResponse {
  AttributesModel toDomain() {
    return AttributesModel(
      createdAt: createdAt.onNull(),
      updatedAt: updatedAt.onNull(),
      slug: slug.onNull(),
      synopsis: synopsis.onNull(),
      description: description.onNull(),
      coverImageTopOffset: coverImageTopOffset.onNull(),
      titles: titles?.toDomain(),
      canonicalTitle: canonicalTitle.onNull(),
      abbreviatedTitles: abbreviatedTitles?.map((e) => e).toList(),
      averageRating: averageRating.onNull(),
      ratingFrequencies: ratingFrequencies?.toDomain(),
      userCount: userCount.onNull(),
      favoritesCount: favoritesCount.onNull(),
      startDate: startDate.onNull(),
      endDate: endDate.onNull(),
      nextRelease: nextRelease.onNull(),
      popularityRank: popularityRank.onNull(),
      ratingRank: ratingRank.onNull(),
      ageRating: ageRating.onNull(),
      ageRatingGuide: ageRatingGuide.onNull(),
      subtype: subtype.onNull(),
      status: status.onNull(),
      tba: tba.onNull(),
      posterImage: posterImage?.toDomain(),
      coverImage: coverImage?.toDomain(),
      episodeCount: episodeCount.onNull(),
      episodeLength: episodeLength.onNull(),
      totalLength: totalLength.onNull(),
      youtubeVideoId: youtubeVideoId.onNull(),
      showType: showType.onNull(),
      nsfw: nsfw.onNull(),
    );
  }
}
