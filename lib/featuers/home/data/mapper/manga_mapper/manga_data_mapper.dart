import 'package:anime_list/core/extentions/extentions.dart';
import '../../../domain/model/manga_models/manga_data_model.dart';
import '../../response/manga_response/manga_data_response.dart';
import 'images_mapper.dart';
import 'manga_titles_mapper.dart';
import 'published_mapper.dart';
import 'authors_mapper.dart';

extension MangaDataMapper on MangaDataResponse {
  MangaDataModel toDomain() {
    return MangaDataModel(
      malId: malId.onNull(),
      url: url.onNull(),
      images: images?.toDomain(),
      approved: approved.onNull(),
      mangaTitles: mangaTitles?.map((e) => e.toDomain()).toList(),
      title: title.onNull(),
      titleEnglish: titleEnglish.onNull(),
      titleJapanese: titleJapanese.onNull(),
      titleSynonyms: titleSynonyms?.map((e) => e).toList(),
      type: type.onNull(),
      chapters: chapters.onNull(),
      volumes: volumes.onNull(),
      status: status.onNull(),
      publishing: publishing.onNull(),
      published: published?.toDomain(),
      score: score.onNull(),
      scored: scored.onNull(),
      scoredBy: scoredBy.onNull(),
      rank: rank.onNull(),
      popularity: popularity.onNull(),
      members: members.onNull(),
      favorites: favorites.onNull(),
      synopsis: synopsis.onNull(),
      background: background.onNull(),
      authors: authors?.map((e) => e.toDomain()).toList(),
      serializations: serializations?.map((e) => e.toDomain()).toList(),
      genres: genres?.map((e) => e.toDomain()).toList(),
      explicitGenres: explicitGenres?.map((e) => e).toList(),
      themes: themes?.map((e) => e.toDomain()).toList(),
      demographics: demographics?.map((e) => e.toDomain()).toList(),
    );
  }
}
