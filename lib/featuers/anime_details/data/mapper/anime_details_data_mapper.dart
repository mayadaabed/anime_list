import 'package:anime_list/core/extentions/extentions.dart';
import 'package:anime_list/featuers/anime_details/data/mapper/external_mapper.dart';
import '../../domain/model/anime_details_data_model.dart';
import '../response/anime_details_data_response.dart';
import '../../../home/data/mapper/manga_mapper/authors_mapper.dart';
import '../../../home/data/mapper/manga_mapper/manga_titles_mapper.dart';
import 'package:anime_list/featuers/home/data/mapper/manga_mapper/images_mapper.dart';
import '../../../search/data/mapper/search_broadcast_mapper.dart';
import '../../../search/data/mapper/search_trailer_mapper.dart';
import '../../../home/data/mapper/manga_mapper/published_mapper.dart';
import 'anime_details_theme_mapper.dart';
import 'relations_mapper.dart';


extension AnimeDetailsDataMapper on AnimeDetailsDataResponse {
  AnimeDetailsDataModel toDomain() {
    return AnimeDetailsDataModel(
      malId: malId.onNull(),
      url: url.onNull(),
      images: images?.toDomain(),
      trailer: trailer?.toDomain(),
      approved: approved.onNull(),
      searchTitles: titles?.map((e) => e.toDomain()).toList(),
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
      relations: relations?.map((e) => e.toDomain()).toList(),
      theme: theme?.toDomain(),
      external: external?.map((e) => e.toDomain()).toList(),
      streaming: streaming?.map((e) => e.toDomain()).toList(),
    );
  }
}
