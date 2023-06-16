import 'package:anime_list/featuers/home/data/response/manga_response/published_response.dart';
import 'package:anime_list/featuers/home/data/response/manga_response/manga_titles_response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'authors_response.dart';
import 'images_response.dart';

part 'manga_data_response.g.dart';

@JsonSerializable()
class MangaDataResponse {
  @JsonKey(name: 'mal_id')
  int? malId;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'images')
  ImagesResponse? images;
  @JsonKey(name: 'approved')
  bool? approved;
  @JsonKey(name: 'titles')
  List<MangaTitlesReponse>? mangaTitles;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'title_english')
  String? titleEnglish;
  @JsonKey(name: 'title_japanese')
  String? titleJapanese;
  @JsonKey(name: 'title_synonyms')
  List<String>? titleSynonyms;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'chapters')
  int? chapters;
  @JsonKey(name: 'volumes')
  int? volumes;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'publishing')
  bool? publishing;
  @JsonKey(name: 'published')
  PublishedResponse? published;
  @JsonKey(name: 'score')
  double? score;
  @JsonKey(name: 'scored')
  double? scored;
  @JsonKey(name: 'scored_by')
  int? scoredBy;
  @JsonKey(name: 'rank')
  int? rank;
  @JsonKey(name: 'popularity')
  int? popularity;
  @JsonKey(name: 'members')
  int? members;
  @JsonKey(name: 'favorites')
  int? favorites;
  @JsonKey(name: 'synopsis')
  String? synopsis;
  @JsonKey(name: 'background')
  String? background;
  @JsonKey(name: 'authors')
  List<AuthorsResposne>? authors;
  @JsonKey(name: 'serializations')
  List<AuthorsResposne>? serializations;
  @JsonKey(name: 'genres')
  List<AuthorsResposne>? genres;
  @JsonKey(name: 'explicit_genres')
  List<String>? explicitGenres;
  @JsonKey(name: 'themes')
  List<AuthorsResposne>? themes;
  @JsonKey(name: 'demographics')
  List<AuthorsResposne>? demographics;

  MangaDataResponse({
    this.malId,
    this.url,
    this.images,
    this.approved,
    this.mangaTitles,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.chapters,
    this.volumes,
    this.status,
    this.publishing,
    this.published,
    this.score,
    this.scored,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.authors,
    this.serializations,
    this.genres,
    this.explicitGenres,
    this.themes,
    this.demographics,
  });

  factory MangaDataResponse.fromJson(Map<String, dynamic> json) =>
      _$MangaDataResponseFromJson(json);

  Map<String, dynamic> toJson(MangaDataResponse instance) =>
      _$MangaDataResponseToJson(this);
}
