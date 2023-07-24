


import '../../../home/domain/model/manga_models/authors_model.dart';
import '../../../home/domain/model/manga_models/images_model.dart';
import '../../../home/domain/model/manga_models/manga_titles_model.dart';
import '../../../home/domain/model/manga_models/published_model.dart';
import '../../../search/domain/model/search_broadcast_model.dart';
import '../../../search/domain/model/trailer_model.dart';

class SeasonsDataModel {
  int? malId;
  String? url;
  ImagesModel? images;
  TrailerModel? trailer;
  bool? approved;
  List<MangaTitlesModel>? searchTitles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String>? titleSynonyms;
  String? type;
  String? source;
  int? episodes;
  String? status;
  bool? airing;
  PublishedModel? aired;
  String? duration;
  String? rating;
  double? score;
  int? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  String? season;
  int? year;
  SearchBroadcastModel? broadcast;
  List<AuthorsModel>? producers;
  List<AuthorsModel>? licensors;
  List<AuthorsModel>? studios;
  List<AuthorsModel>? genres;
  List<AuthorsModel>? explicitGenres;
  List<AuthorsModel>? themes;
  List<AuthorsModel>? demographics;

  SeasonsDataModel({
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
}
