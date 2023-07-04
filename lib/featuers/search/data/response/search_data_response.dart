import 'package:anime_list/featuers/search/data/response/search_broadcast_response.dart';
import 'package:anime_list/featuers/search/data/response/trailer_response.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../home/data/response/manga_response/authors_response.dart';
import '../../../home/data/response/manga_response/images_response.dart';
import '../../../home/data/response/manga_response/manga_titles_response.dart';
import '../../../home/data/response/manga_response/published_response.dart';
part 'search_data_response.g.dart';

@JsonSerializable()
class SearchDataResponse {
  @JsonKey(name: 'mal_id')
  int? malId;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'images')
  ImagesResponse? images;
  @JsonKey(name: 'trailer')
  TrailerResponse? trailer;
  @JsonKey(name: 'approved')
  bool? approved;
  @JsonKey(name: 'titles')
  List<MangaTitlesReponse>? searchTitles;
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
  @JsonKey(name: 'source')
  String? source;
  @JsonKey(name: 'episodes')
  int? episodes;
  @JsonKey(name: 'status')
  String? status;
  @JsonKey(name: 'airing')
  bool? airing;
  @JsonKey(name: 'aired')
  PublishedResponse? aired;
  @JsonKey(name: 'duration')
  String? duration;
  @JsonKey(name: 'rating')
  String? rating;
  @JsonKey(name: 'score')
  double? score;
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
  @JsonKey(name: 'season')
  String? season;
  @JsonKey(name: 'year')
  int? year;
  @JsonKey(name: 'broadcast')
  SearchBroadcastResponse? broadcast;
  @JsonKey(name: 'producers')
  List<AuthorsResposne>? producers;
  @JsonKey(name: 'licensors')
  List<AuthorsResposne>? licensors;
  @JsonKey(name: 'studios')
  List<AuthorsResposne>? studios;
  @JsonKey(name: 'genres')
  List<AuthorsResposne>? genres;
  @JsonKey(name: 'explicit_genres')
  List<AuthorsResposne>? explicitGenres;
  @JsonKey(name: 'themes')
  List<AuthorsResposne>? themes;
  @JsonKey(name: 'demographics')
  List<AuthorsResposne>? demographics;

  SearchDataResponse({
    this.malId,
    this.url,
    this.images,
    this.trailer,
    this.approved,
    this.searchTitles,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.titleSynonyms,
    this.type,
    this.source,
    this.episodes,
    this.status,
    this.airing,
    this.aired,
    this.duration,
    this.rating,
    this.score,
    this.scoredBy,
    this.rank,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
    this.background,
    this.season,
    this.year,
    this.broadcast,
    this.producers,
    this.licensors,
    this.studios,
    this.genres,
    this.explicitGenres,
    this.themes,
    this.demographics,
  });

  factory SearchDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchDataResponseFromJson(json);

  Map<String, dynamic> toJson(SearchDataResponse instance) =>
      _$SearchDataResponseToJson(instance);
}
