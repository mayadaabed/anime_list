import '../../domain/model/schedules_data_model.dart';
import '../response/schedules_data_response.dart';
import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/home/data/mapper/manga_mapper/images_mapper.dart';
import '../../../search/data/mapper/search_trailer_mapper.dart';
import 'package:anime_list/featuers/home/data/mapper/manga_mapper/manga_titles_mapper.dart';
import '../../../home/data/mapper/manga_mapper/published_mapper.dart';
import '../../../search/data/mapper/search_broadcast_mapper.dart';
import 'package:anime_list/featuers/home/data/mapper/manga_mapper/authors_mapper.dart';

extension SchedulesDataMapper on SchedulesDataResponse {
  SchedulesDataModel toDomain() {
    return SchedulesDataModel(
      malId: malId.onNull(),
      url: url.onNull(),
      images: images?.toDomain(),
      trailer: trailer?.toDomain(),
      approved: approved.onNull(),
      searchTitles: searchTitles?.map((e) => e.toDomain()).toList(),
      title: title.onNull(),
      titleEnglish: titleEnglish.onNull(),
      titleJapanese: titleJapanese.onNull(),
      titleSynonyms: titleSynonyms?.map((e) => e).toList(),
      type: type.onNull(),
      source: source.onNull(),
      episodes: episodes.onNull(),
      status: status.onNull(),
      airing: airing.onNull(),
      aired: aired?.toDomain(),
      duration: duration.onNull(),
      rating: rating.onNull(),
      score: score.onNull(),
      scoredBy: scoredBy.onNull(),
      rank: rank.onNull(),
      popularity: popularity.onNull(),
      members: members.onNull(),
      favorites: favorites.onNull(),
      synopsis: synopsis.onNull(),
      background: background.onNull(),
      season: season.onNull(),
      year: year.onNull(),
      broadcast: broadcast?.toDomain(),
      producers: producers?.map((e) => e.toDomain()).toList(),
      licensors: licensors?.map((e) => e.toDomain()).toList(),
      studios: studios?.map((e) => e.toDomain()).toList(),
      genres: genres?.map((e) => e.toDomain()).toList(),
      explicitGenres: explicitGenres?.map((e) => e.toDomain()).toList(),
      themes: themes?.map((e) => e.toDomain()).toList(),
      demographics: demographics?.map((e) => e.toDomain()).toList(),
    );
  }
}
