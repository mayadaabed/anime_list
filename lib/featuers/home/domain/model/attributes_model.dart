import 'cover_image_model.dart';
import 'poster_image_model.dart';
import 'rating_frequencies_model.dart';
import 'titles_model.dart';

class AttributesModel {
  String? createdAt;
  String? updatedAt;
  String? slug;
  String? synopsis;
  String? description;
  int? coverImageTopOffset;
  TitlesModel? titles;
  String? canonicalTitle;
  List<String>? abbreviatedTitles;
  String? averageRating;
  RatingFrequenciesModel? ratingFrequencies;
  int? userCount;
  int? favoritesCount;
  String? startDate;
  String? endDate;
  String? nextRelease;
  int? popularityRank;
  int? ratingRank;
  String? ageRating;
  String? ageRatingGuide;
  String? subtype;
  String? status;
  String? tba;
  PosterImageModel? posterImage;
  CoverImageModel? coverImage;
  int? episodeCount;
  int? episodeLength;
  int? totalLength;
  String? youtubeVideoId;
  String? showType;
  bool? nsfw;

  AttributesModel({
    this.createdAt,
    this.updatedAt,
    this.slug,
    this.synopsis,
    this.description,
    this.coverImageTopOffset,
    this.titles,
    this.canonicalTitle,
    this.abbreviatedTitles,
    this.averageRating,
    this.ratingFrequencies,
    this.userCount,
    this.favoritesCount,
    this.startDate,
    this.endDate,
    this.nextRelease,
    this.popularityRank,
    this.ratingRank,
    this.ageRating,
    this.ageRatingGuide,
    this.subtype,
    this.status,
    this.tba,
    this.posterImage,
    this.coverImage,
    this.episodeCount,
    this.episodeLength,
    this.totalLength,
    this.youtubeVideoId,
    this.showType,
    this.nsfw,
  });
}
