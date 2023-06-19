import 'authors_model.dart';
import 'images_model.dart';
import 'manga_titles_model.dart';
import 'published_model.dart';

class MangaDataModel {
  int? malId;
  String? url;
  ImagesModel? images;
  bool? approved;
  List<MangaTitlesModel>? mangaTitles;
  String? title;
  String? titleEnglish;
  String? titleJapanese;
  List<String>? titleSynonyms;
  String? type;
  int? chapters;
  int? volumes;
  String? status;
  bool? publishing;
  PublishedModel? published;
  double? score;
  double? scored;
  int? scoredBy;
  int? rank;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;
  String? background;
  List<AuthorsModel>? authors;
  List<AuthorsModel>? serializations;
  List<AuthorsModel>? genres;
  List<String>? explicitGenres;
  List<AuthorsModel>? themes;
  List<AuthorsModel>? demographics;

  MangaDataModel({
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
}
