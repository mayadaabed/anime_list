import 'package:anime_list/featuers/home/data/response/rating_frequencies_response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'cover_image_response.dart';
import 'poster_image_response.dart';
import 'titles_response.dart';
part 'attributes_response.g.dart';

@JsonSerializable()
class AttributesResponse {
  @JsonKey(name: 'createdAt')
  String? createdAt;
  @JsonKey(name: 'updatedAt')
  String? updatedAt;
  @JsonKey(name: 'slug')
  String? slug;
  @JsonKey(name: 'synopsis')
  String? synopsis;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'coverImageTopOffset')
  int? coverImageTopOffset;
  @JsonKey(name: 'titles')
  TitlesResponse? titles;
  @JsonKey(name: 'canonicalTitle')
  String? canonicalTitle;
  @JsonKey(name: 'abbreviatedTitles')
  List<String>? abbreviatedTitles;
  @JsonKey(name: 'averageRating')
  String? averageRating;
  @JsonKey(name: 'ratingFrequencies')
  RatingFrequenciesResponse? ratingFrequencies;
  @JsonKey(name: 'userCount')
  int? userCount;
  @JsonKey(name: 'favoritesCount')
  int? favoritesCount;
  @JsonKey(name: 'startDate')
  String? startDate;
  @JsonKey(name: 'endDate')
  String? endDate;
  @JsonKey(name: 'nextRelease')
  String? nextRelease;
  @JsonKey(name: 'popularityRank')
  int? popularityRank;
  @JsonKey(name: 'ratingRank')
  int? ratingRank;
  @JsonKey(name: 'ageRating')
  String? ageRating;
  @JsonKey(name: 'ageRatingGuide')
  String? ageRatingGuide;
  @JsonKey(name: 'subtype')
  String? subtype;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'tba')
  String? tba;
  @JsonKey(name: 'posterImage')
  PosterImageResponse? posterImage;
  @JsonKey(name: 'coverImage')
  CoverImageResponse? coverImage;
  @JsonKey(name: 'episodeCount')
  int? episodeCount;
  @JsonKey(name: 'episodeLength')
  int? episodeLength;
  @JsonKey(name: 'totalLength')
  int? totalLength;
  @JsonKey(name: 'youtubeVideoId')
  String? youtubeVideoId;
  @JsonKey(name: 'showType')
  String? showType;
  @JsonKey(name: 'nsfw')
  bool? nsfw;

  AttributesResponse({
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

  factory AttributesResponse.fromJson(Map<String, dynamic> json) =>
      _$AttributesResponseFromJson(json);

  Map<String, dynamic> toJson(AttributesResponse instance) =>
      _$AttributesResponseToJson(this);
}
